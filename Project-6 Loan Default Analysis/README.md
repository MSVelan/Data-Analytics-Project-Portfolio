# Project 6: Loan Application Data Analysis

## Description
This project involves the analysis of a loan application dataset to identify key patterns, detect outliers, handle missing data, and explore the relationships between different variables that may influence loan default. By utilizing Excel's built-in functions, the goal is to ensure the accuracy of the analysis and extract meaningful insights.

---

## Key Areas of Analysis

### A. Identify Missing Data and Handle It Appropriately
- **Objective**: Identify missing data in the dataset and apply appropriate methods to handle it.
- **Task**:
  - Use Excel functions to locate missing data and impute values where necessary.
  - Visualize the proportion of missing values across different variables.
- **Approach**:
  - Use Excel functions such as `COUNT()`, `ISBLANK()`, and `IF()` to find missing data.
  - Apply imputation techniques like using the `AVERAGE()` or `MEDIAN()` functions to fill missing values.
  - Create bar or column charts to visualize the proportion of missing data.
- **Graph**: A bar chart or column chart showing the proportion of missing data for each variable.

### B. Identify Outliers in the Dataset
- **Objective**: Detect and identify outliers in the dataset to prevent them from skewing analysis results.
- **Task**:
  - Use statistical functions to identify outliers in numerical variables.
  - Visualize outliers using appropriate plots.
- **Approach**:
  - Apply Excel’s `QUARTILE()` and `IQR()` to detect outliers and use conditional formatting for easy visualization.
  - Create box plots or scatter plots to highlight outliers in the dataset.
- **Graph**: Box plots or scatter plots to visualize the distribution of numerical variables and outliers.

### C. Analyze Data Imbalance
- **Objective**: Determine if there is any data imbalance in the loan application dataset and calculate the ratio of imbalance.
- **Task**:
  - Calculate the class frequencies to assess data imbalance for binary classification problems.
  - Visualize the distribution of the target variable to understand the class imbalance.
- **Approach**:
  - Use Excel’s `COUNTIF()` and `SUM()` functions to calculate the proportion of each class (e.g., loan default vs. no default).
  - Compare class frequencies to assess the degree of imbalance.
  - Create pie charts or bar charts to visualize the distribution of the target variable.
- **Graph**: A pie chart or bar chart visualizing the class distribution and data imbalance.

### D. Perform Univariate, Segmented Univariate, and Bivariate Analysis
- **Objective**: Gain insights into the driving factors of loan default through detailed analysis of consumer and loan attributes.
- **Task**:
  - Conduct univariate analysis to understand individual variable distributions.
  - Perform segmented univariate analysis to compare variable distributions in different scenarios.
  - Execute bivariate analysis to explore relationships between variables and the target variable.
- **Approach**:
  - Use Excel functions such as `COUNT()`, `AVERAGE()`, and `MEDIAN()` for univariate analysis.
  - Utilize filters, sorting, and pivot tables for segmented analysis.
  - Conduct bivariate analysis with scatter plots or correlation heatmaps to observe relationships.
  - Visualize the findings with histograms, bar charts, and scatter plots.
- **Graph**: 
  - Histograms, bar charts, or box plots for univariate analysis.
  - Stacked or grouped bar charts for segmented univariate analysis.
  - Scatter plots or heatmaps for bivariate analysis.

### E. Identify Top Correlations for Different Scenarios
- **Objective**: Segment the dataset and identify top correlations between variables and loan default in different scenarios.
- **Task**:
  - Segment the dataset based on client status (e.g., clients with payment difficulties).
  - Calculate the correlation coefficients and identify top indicators of loan default.
- **Approach**:
  - Use Excel's `CORREL()` function to calculate correlation coefficients between numerical variables and the target variable.
  - Segment the dataset and compute correlations for each group (e.g., clients with payment difficulties vs. others).
  - Rank the correlations to determine the top predictors of loan default in each scenario.
  - Visualize the results using correlation matrices or heatmaps.
- **Graph**: A correlation matrix or heatmap visualizing the correlations between variables, with the top correlated variables highlighted.

---

## Tools and Technologies
- **Microsoft Excel**:
  - Excel is used extensively for data analysis, including handling missing data, identifying outliers, calculating correlations, and performing various forms of analysis such as univariate, segmented, and bivariate.
  - Key Excel functions used include:
    - `COUNT()`, `COUNTIF()`, `ISBLANK()`, `IF()`
    - `AVERAGE()`, `MEDIAN()`, `QUARTILE()`, `IQR()`, `CORREL()`
    - Conditional formatting and Pivot Tables for visualizing and manipulating data.

---

## Folder Structure
- **data/**: Contains the raw loan application dataset.
- **analysis/**: Contains the Excel sheets with the various analyses, including missing data handling, outlier detection, and correlation analysis.
- **visualizations/**: Contains visualizations like charts and plots for the analyses conducted (e.g., box plots for outliers, correlation heatmaps).
- **reports/**: Contains a summary of insights and findings from the analysis.

---

## How to Run the Analysis
1. Open the **Excel** file located in the `analysis/` folder.
2. Navigate through the sheets corresponding to each analysis task:
   - **Missing Data Handling**: This sheet includes missing data identification and imputation methods.
   - **Outlier Detection**: This sheet identifies and highlights outliers within the dataset using quartile analysis.
   - **Data Imbalance**: This sheet analyzes the class distribution of the target variable and visualizes any data imbalance.
   - **Univariate & Bivariate Analysis**: This sheet provides a detailed univariate, segmented univariate, and bivariate analysis of the dataset.
   - **Correlation Analysis**: This sheet contains the correlation coefficients and visualizations to identify top predictors of loan default for different client segments.
3. Review the visualizations (e.g., bar charts, scatter plots, and heatmaps) for insights into the dataset.

---

## Insights
- **Missing Data**: Missing data has been identified and imputed where necessary to ensure accuracy in further analysis.
- **Outliers**: Several outliers were detected in the dataset, particularly in numerical variables such as loan amount and income. These were addressed appropriately based on business rules.
- **Data Imbalance**: The dataset shows a significant imbalance between classes (e.g., loan default vs. no default). This imbalance needs to be addressed in future predictive modeling.
- **Univariate & Bivariate Analysis**: Univariate analysis highlights key variable distributions, while bivariate analysis reveals strong relationships between certain consumer attributes (e.g., income, credit history) and loan default.
- **Top Correlations**: For clients with payment difficulties, certain variables (e.g., credit score, income) are strong predictors of loan default, as highlighted by correlation analysis.

---

## Conclusion
This project offers a comprehensive analysis of a loan application dataset, focusing on key factors such as missing data, outliers, data imbalance, and variable relationships. By leveraging Excel's built-in functions and tools, we gained valuable insights into the driving factors behind loan default, which can be used to inform future predictive models or business decisions.