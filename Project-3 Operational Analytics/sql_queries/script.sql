create database p3_caseStudy1;
use p3_caseStudy1;
create table c1(ds date, job_id integer, actor_id integer, event varchar(20), language varchar(30), time_spent integer, org char(1));
insert into c1 values('2020-11-30', 21, 1001, "skip", "English", 15, "A");
insert into c1 values('2020-11-30', 22, 1006, "transfer", "Arabic", 25, "B");
insert into c1 values('2020-11-29', 23, 1003, "decision", "Persian", 20, "C");
insert into c1 values('2020-11-28', 23, 1005, "transfer", "Persian", 22, "D");
insert into c1 values('2020-11-28', 25, 1002, "decision", "Hindi", 11, "B");
insert into c1 values('2020-11-27', 11, 1007, "decision", "French", 104, "D");
insert into c1 values('2020-11-26', 23, 1004, "skip", "Persian", 56, "A");
insert into c1 values('2020-11-25', 20, 1003, "transfer", "Italian", 45, "C");

select * from c1;

/* Write an SQL query to calculate the number of jobs 
reviewed per hour for each day in November 2020.
Note: the time_spent is given in seconds therefore 
in the following query time_spent<=3600 
would check if the time_spent is less than an hour */

select
    ds AS day,
    count(distinct job_id) as total_jobs_handled
from c1
where
    ds >= '2020-11-01' and ds < '2020-12-01'
    and time_spent <= 3600
group by ds
order by ds;

/* Write an SQL query to calculate the 7-day rolling average of throughput. 
Additionally, explain whether you prefer using the daily metric 
or the 7-day rolling average for throughput, and why.*/

select ds, 
avg(events_per_sec) over(order by ds rows between 6 preceding and current row) as rolling_avg_throughput 
from 
(select ds, count(*)/sum(time_spent) as events_per_sec from c1 group by ds) subquery;

/* Write an SQL query to calculate the percentage share of each language over the last 30 days. */

with 
	t2 as (select language, count(*) as count from c1 group by language),
	t1 as (select sum(count) as total from t2)
select language, (count*100)/total as pct from t1, t2;

/* Write an SQL query to display duplicate rows from the job_data table. */

select ds, job_id, actor_id, event, language, time_spent, org
from c1
group by ds, job_id, actor_id, event, language, time_spent, org
having count(*) > 1;
    
/* Case Study 2 */

-- users: user_id	created_at	company_id	language	activated_at	state
-- events: user_id	occurred_at	event_type	event_name	location	device	user_type
-- email_events: user_id	occurred_at	action	user_type

create table users(
user_id int,
created_at varchar(100),
company_id int,
language varchar(100),
activated_at varchar(100),
state varchar(50)
);

create table events(
user_id int,
occurred_at varchar(100),
event_type varchar(50),
event_name varchar(60),
location varchar(60),
device varchar(100),
user_type int
);

create table email_events(
user_id int,
occurred_at varchar(100),
`action` varchar(100),
user_type int
);

show variables like 'secure_file_priv';

-- '/var/lib/mysql-files/'

load data infile '/var/lib/mysql-files/users.csv'
into table users
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile '/var/lib/mysql-files/events.csv'
into table `events`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile '/var/lib/mysql-files/email_events.csv'
into table email_events
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from users;
select * from events;
select * from email_events;

alter table users add column temp_created_at datetime;
update users set temp_created_at = STR_TO_DATE(created_at,'%d-%m-%Y %H:%i');
alter table users drop column created_at;
alter table users change column temp_created_at created_at datetime;

alter table users add column temp_activated_at datetime;
update users set temp_activated_at = STR_TO_DATE(activated_at,'%d-%m-%Y %H:%i');
alter table users drop column activated_at;
alter table users change column temp_activated_at activated_at datetime;

alter table events add column temp_occurred_at datetime;
update events set temp_occurred_at = STR_TO_DATE(occurred_at,'%d-%m-%Y %H:%i');
alter table events drop column occurred_at;
alter table events change column temp_occurred_at occurred_at datetime;

alter table email_events add column temp_occurred_at datetime;
update email_events set temp_occurred_at = STR_TO_DATE(occurred_at,'%d-%m-%Y %H:%i');
alter table email_events drop column occurred_at;
alter table email_events change column temp_occurred_at occurred_at datetime;

/* Write a SQL query to calculate the weekly user engagement. */

select 
	user_id, 
	concat(year(occurred_at),'/',week(occurred_at)) as `Week`, 
	count(*) as total_engagements
from events 
where event_type='engagement'
group by user_id, `Week`;

/* Write an SQL query to calculate the user growth for the product. */

select 
	date_format(created_at, "%b") as month,
	count(distinct user_id) as users,
    coalesce(count(distinct user_id) - lag(count(distinct user_id),1) 
		over(order by date_format(created_at, "%b")),
    count(distinct user_id)) as growth
from users
group by month
order by month;

/* Write an SQL query to calculate the weekly retention of users based on their sign-up cohort. */

select
  date(activated_at) as cohort_start_date,
  week(occurred_at, 1) as `week`,
  count(distinct users.user_id) AS total_users,
  count(distinct users.user_id) - lag(count(distinct users.user_id), 1) 
	over(partition by date(activated_at) order by week(occurred_at, 1)) as retained_users,
  coalesce((count(distinct users.user_id) - lag(count(distinct users.user_id), 1) 
	over(partition by date(activated_at) order by week(occurred_at, 1))) / 
    count(distinct users.user_id) * 100, 0) as retention_rate
from users
left join events on users.user_id = events.user_id
where event_type = 'engagement'  
  and occurred_at >= created_at
group by cohort_start_date, week(occurred_at, 1)
order by cohort_start_date, week;

/* Write an SQL query to calculate the weekly engagement per device. */

select device, count(*) as total_engagements, 
	concat(year(occurred_at),'/',week(occurred_at)) as `Week`
from events
where event_type='engagement'
group by device, `Week`;

/* Your Task: Write an SQL query to calculate the email engagement metrics. */

select
    date(occurred_at) as date,
    count(distinct case when action = 'sent_weekly_digest' then user_id end) as weekly_digests_sent,
    count(distinct case when action = 'email_open' then user_id end) as emails_opened,
    count(distinct case when action = 'email_clickthrough' then user_id end) as emails_clicked,
    count(distinct case when action = 'sent_reengagement_email' then user_id end) as reengagement_emails_sent,
    100.0 * count(distinct case when action = 'email_open' then user_id end) 
		/ count(distinct case when action = 'sent_weekly_digest' then user_id end) as open_rate,
    100.0 * count(distinct case when action = 'email_clickthrough' then user_id end) 
		/ count(distinct case when action = 'email_open' then user_id end) as clickthrough_rate
from email_events
group by DATE(email_events.occurred_at)
order by date;

select action, count(distinct user_id) as unique_users,
count(*) as total_actions, concat(year(occurred_at),'/',week(occurred_at)) as `Week`
from email_events
group by action, `Week`;