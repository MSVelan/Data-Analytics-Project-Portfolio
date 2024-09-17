# Project 5: IMDB Movie Analysis

## Description
This project aims to analyze various aspects of movies, such as their genres, durations, languages, directors, and budgets, and assess their impact on IMDB scores and financial success. The analysis provides insights into how different factors contribute to the overall performance and reception of movies.

Using Excel's powerful functions and tools, we conduct in-depth analysis on a dataset of movies, focusing on genre distribution, duration, language influence, director impact, and budget profitability.

---

## Video Explanation
[!Watch the video](https://www.loom.com/share/32eb8f4dda024adfa8df791c56ef3fb0?sid=fb14f51f-9cb7-42e5-8e0b-1cf1a44f0f24)

---

## Key Areas of Analysis

### A. Movie Genre Analysis: Distribution and Impact on IMDB Score
- **Objective**: Analyze the distribution of movie genres and their impact on IMDB scores.
- **Task**:
  - Identify the most common movie genres.
  - Calculate descriptive statistics (mean, median, mode, range, variance, standard deviation) of the IMDB scores for each genre.
- **Approach**:
  - Use Excel's `COUNTIF()` function to count occurrences of each genre.
  - Apply Excel's `AVERAGE()`, `MEDIAN()`, `MODE()`, `VAR()`, and `STDEV()` to analyze the impact of genres on IMDB scores.
  - Compare the descriptive statistics to understand how movie genres influence ratings.

### B. Movie Duration Analysis: Duration and Impact on IMDB Score
- **Objective**: Analyze the distribution of movie durations and assess their impact on IMDB scores.
- **Task**:
  - Calculate descriptive statistics (mean, median, and standard deviation) for movie durations.
  - Create a scatter plot to visualize the relationship between movie duration and IMDB score.
  - Add a trendline to observe the strength and direction of the relationship.
- **Approach**:
  - Use Excel's `AVERAGE()`, `MEDIAN()`, and `STDEV()` functions for duration analysis.
  - Create a scatter plot and add a trendline to observe any correlation between duration and IMDB score.

### C. Language Analysis: Distribution and Impact on IMDB Score
- **Objective**: Analyze the distribution of movies based on their language and the impact on IMDB scores.
- **Task**:
  - Identify the most common languages used in movies.
  - Calculate descriptive statistics (mean, median, standard deviation) of IMDB scores for each language.
- **Approach**:
  - Use `COUNTIF()` to find the number of movies for each language.
  - Apply `AVERAGE()`, `MEDIAN()`, and `STDEV()` to calculate statistics and understand how language influences ratings.

### D. Director Analysis: Influence of Directors on Movie Ratings
- **Objective**: Assess the influence of directors on movie ratings based on their average IMDB score.
- **Task**:
  - Identify top directors based on their average IMDB scores.
  - Use percentile calculations to analyze the success of directors in relation to the overall dataset.
- **Approach**:
  - Use `AVERAGEIF()` to calculate the average IMDB score for each director.
  - Apply Excel’s `PERCENTILE()` function to find directors in the top percentile of IMDB scores.

### E. Budget Analysis: Relationship Between Budgets and Financial Success
- **Objective**: Explore the relationship between movie budgets and their financial success.
- **Task**:
  - Analyze the correlation between movie budgets and gross earnings.
  - Identify the movies with the highest profit margin.
- **Approach**:
  - Use Excel's `CORREL()` function to find the correlation coefficient between movie budgets and gross earnings.
  - Calculate the profit margin (gross earnings - budget) and identify the top movies with `MAX()`.

---

## Tools and Technologies
- **Microsoft Excel**:
  - Excel is used for all the data analysis and calculations, including:
    - `COUNTIF()`, `AVERAGE()`, `MEDIAN()`, `STDEV()`, `MODE()`, `VAR()`, `PERCENTILE()`, `CORREL()`, and more.
  - Visualizations such as scatter plots and trendlines are created using Excel's charting tools to represent relationships between variables.

---

## Folder Structure
- **data/**: Contains the raw movie data used for analysis.
- **analysis/**: Contains the Excel files with all calculations, descriptive statistics, and visualizations.
- **reports/**: Contains reports and summaries based on the analysis findings.
- **visualizations/**: Contains the scatter plots, trendlines, and charts used to represent the data graphically.

---

## How to Run the Analysis
1. Open the **Excel** file located in the `analysis/` folder.
2. Navigate through the sheets for each task:
   - **Movie Genre Analysis**: This sheet analyzes the distribution of genres and their descriptive statistics.
   - **Movie Duration Analysis**: This sheet contains statistics for movie durations and the scatter plot visualizing the relationship with IMDB scores.
   - **Language Analysis**: This sheet analyzes the most common languages and their effect on IMDB ratings.
   - **Director Analysis**: This sheet highlights the top directors and their influence on movie success.
   - **Budget Analysis**: This sheet provides the correlation between movie budgets and gross earnings and identifies the movies with the highest profit margins.
3. Review the visualizations and calculations for detailed insights into each analysis area.

---

## Insights
- **Movie Genre Analysis**: Genres can significantly impact IMDB ratings, with certain genres showing higher average scores than others.
- **Movie Duration Analysis**: The relationship between movie duration and IMDB scores varies, with some duration ranges performing better than others.
- **Language Analysis**: The language in which a movie is made can influence its IMDB score, with certain languages performing better on average.
- **Director Analysis**: Directors play a key role in the success of movies, with top directors consistently delivering high-rated films.
- **Budget Analysis**: There is a positive correlation between movie budgets and gross earnings, but some low-budget movies yield high-profit margins.

---

## Conclusion
This project offers a comprehensive analysis of the key factors influencing the success of movies. By utilizing Excel for calculations and visualizations, it provides clear insights into how genres, durations, languages, directors, and budgets affect movie performance on IMDB and their financial success. These insights can be used to make informed decisions in the film industry.
