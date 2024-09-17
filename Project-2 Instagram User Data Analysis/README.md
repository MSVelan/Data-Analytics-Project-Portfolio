# Project 2: Instagram User Data Analysis

## Description
This project involves analyzing user interactions and engagement on Instagram to provide actionable insights that can help various teams within the business, such as marketing, product, and development, to make data-driven decisions. By using SQL and MySQL Workbench, we extract valuable information that the teams can use to improve the platform's performance and user experience.

---

## A) Marketing Analysis

### 1. **Loyal User Reward**:
   - **Objective**: Reward the most loyal users, i.e., those who have been using the platform for the longest time.
   - **Task**: Identify the **five oldest users** on Instagram based on the provided database.

### 2. **Inactive User Engagement**:
   - **Objective**: Encourage inactive users to start posting by sending them promotional emails.
   - **Task**: Identify users who **have never posted** a single photo on Instagram.

### 3. **Contest Winner Declaration**:
   - **Objective**: Determine the winner of the contest organized by the marketing team, where the user with the most likes on a single photo wins.
   - **Task**: Find the user who has the **most likes on a single photo** and provide their details to the team.

### 4. **Hashtag Research**:
   - **Objective**: Assist a partner brand in reaching more users by providing them with the most popular hashtags to use in their posts.
   - **Task**: Identify and suggest the **top five most commonly used hashtags** on the platform.

### 5. **Ad Campaign Launch**:
   - **Objective**: Determine the best day of the week to launch an ad campaign by analyzing user registration patterns.
   - **Task**: Identify the **day of the week when most users register** on Instagram and suggest when to schedule an ad campaign.

---

## B) Investor Metrics

### 1. **User Engagement**:
   - **Objective**: Provide insights into user activity on Instagram to determine if users are still actively posting or if their activity is declining.
   - **Task**: Calculate the **average number of posts per user** and the ratio of the **total number of photos divided by the total number of users**.

### 2. **Bots & Fake Accounts**:
   - **Objective**: Identify potential fake or bot accounts that may negatively affect the platform's metrics.
   - **Task**: Detect users (potential bots) who have **liked every single photo** on the site, as this behavior is atypical for normal users.

---

## Tools & Technologies
- **SQL**: For querying and analyzing the Instagram user data.
- **MySQL Workbench**: Used as the database management tool to perform all the required analysis and retrieve insights.

---

## Key Insights & Deliverables
1. **Top 5 Oldest Users**: A list of the five longest-serving users of Instagram, helpful for the **Loyal User Reward**.
2. **Inactive Users**: A group of users who have never posted a photo, useful for **Inactive User Engagement**.
3. **Contest Winner**: The user with the highest number of likes on a single post, critical for the **Contest Winner Declaration**.
4. **Popular Hashtags**: A list of the five most-used hashtags to assist with **Hashtag Research** for partners.
5. **Best Ad Campaign Day**: Insights on the best day to launch an ad based on user registration patterns.

---

## How to Run the Queries
1. Open **MySQL Workbench** and connect to the provided database.
2. Run the SQL scripts in the appropriate sequence to extract insights:
   - Loyal users query
   - Inactive users query
   - Contest winner query
   - Hashtag popularity query
   - Registration day query
   - Investor metrics query

3. Each task has a corresponding SQL script in the `sql_queries` folder of this repository.

---

## Conclusion
This project provides insights into how Instagram users interact with the platform and offers actionable data that can help the marketing, product, and development teams optimize their strategies. Additionally, investor-focused metrics ensure the platform is growing healthily without being overrun by bots or fake accounts.
