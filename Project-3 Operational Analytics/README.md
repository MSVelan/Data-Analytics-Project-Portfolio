# Project 3: SQL Case Studies

## Description
This project includes two case studies that involve analyzing data from various tables using SQL. The primary objective is to derive meaningful insights and perform analysis based on the tasks provided. Each case study presents different real-world scenarios related to job reviews and user engagement, and it involves writing SQL queries to solve the problems.

---

## Case Study-1: Job Data Analysis

In this case study, you will work with the `job_data` table, which contains job review records, including details about actors, events, and time spent. The tasks focus on analyzing job reviews, calculating throughput, and detecting duplicates.

### Table Description: `job_data`
- `job_id`: Unique identifier of jobs.
- `actor_id`: Unique identifier of the actor reviewing the job.
- `event`: Type of event (decision, skip, transfer).
- `language`: Language of the content reviewed.
- `time_spent`: Time spent to review the job (in seconds).
- `org`: Organization of the actor.
- `ds`: Date of the review in the format `yyyy/mm/dd`.

### Tasks

#### 1. **Jobs Reviewed Over Time**
   - **Objective**: Calculate the number of jobs reviewed per hour for each day in **November 2020**.
   - **Task**: Write an SQL query to calculate the number of jobs reviewed per hour for each day in **November 2020**.

#### 2. **Throughput Analysis**
   - **Objective**: Calculate the **7-day rolling average of throughput** (number of events per second).
   - **Task**: Write an SQL query to calculate the **7-day rolling average of throughput**. 
   - **Explanation**: Additionally, explain whether you prefer using the **daily metric** or the **7-day rolling average** for throughput, and why.

#### 3. **Language Share Analysis**
   - **Objective**: Calculate the **percentage share** of each language over the last **30 days**.
   - **Task**: Write an SQL query to calculate the percentage share of each language over the last **30 days**.

#### 4. **Duplicate Rows Detection**
   - **Objective**: Identify **duplicate rows** in the data.
   - **Task**: Write an SQL query to display duplicate rows from the `job_data` table.

---

## Case Study-2: User Engagement Analysis

In this case study, you will work with three tables: `users`, `events`, and `email_events`. The focus is on analyzing user engagement, growth, retention, and email engagement for a product.

### Table Descriptions:
- **users**: Contains one row per user with descriptive information about the user's account.
- **events**: Contains one row per event, representing actions taken by users (e.g., login, messaging, search).
- **email_events**: Contains events specific to the sending of emails.

### Tasks

#### 1. **Weekly User Engagement**
   - **Objective**: Measure the activeness of users on a weekly basis.
   - **Task**: Write an SQL query to calculate the **weekly user engagement**.

#### 2. **User Growth Analysis**
   - **Objective**: Analyze the **growth of users over time** for a product.
   - **Task**: Write an SQL query to calculate the **user growth** for the product.

#### 3. **Weekly Retention Analysis**
   - **Objective**: Analyze the **retention of users** on a weekly basis after signing up for a product.
   - **Task**: Write an SQL query to calculate the **weekly retention** of users based on their sign-up cohort.

#### 4. **Weekly Engagement Per Device**
   - **Objective**: Measure the activeness of users on a weekly basis per device.
   - **Task**: Write an SQL query to calculate the **weekly engagement per device**.

#### 5. **Email Engagement Analysis**
   - **Objective**: Analyze how users are engaging with the **email service**.
   - **Task**: Write an SQL query to calculate the **email engagement metrics**.

---

## Tools & Technologies
- **SQL**: Structured Query Language is used for querying and analyzing the data.
- **MySQL Workbench**: A visual tool for database design, querying, and data analysis.

---

## How to Run the Queries
1. Connect to the MySQL database using **MySQL Workbench** or any other SQL tool of your choice.
2. Execute the provided SQL scripts under the `sql_queries/` folder in sequence to get the required insights.
3. Save the results in the desired format (CSV, Excel, etc.) and use them for further analysis or reporting.

---

## Conclusion
This project involves performing analysis on job review data and user engagement using SQL. By working through these case studies, you will develop a deep understanding of writing complex SQL queries for solving real-world data problems.
