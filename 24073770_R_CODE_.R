# Load required package
library(readxl)

# Read the Excel file
Case_compiled <- read_excel("C:/Users/user/Downloads/18th October/archive 2/Case_compiled.xlsx")

# Display the first 5 rows
head(Case_compiled, 5)
# View structure of the dataset
str(Case_compiled)

# Summary statistics for all variables
summary(Case_compiled)

# Get descriptive stats specifically for numeric variables
numeric_data <- Case_compiled[, sapply(Case_compiled, is.numeric)]
summary(numeric_data)

# Additional descriptive statistics (mean, median, sd, etc.)
sapply(numeric_data, function(x) c(Mean = mean(x, na.rm = TRUE),
                                   Median = median(x, na.rm = TRUE),
                                   SD = sd(x, na.rm = TRUE),
                                   Min = min(x, na.rm = TRUE),
                                   Max = max(x, na.rm = TRUE)))
# Basic barplot example: average of a numeric variable grouped by a categorical variable
# (Replace 'Score' and 'Category' with actual column names from your Case_compiled data)
# Load dataset
library(readxl)
Case_compiled <- read_excel("C:/Users/user/Downloads/18th October/archive 2/Case_compiled.xlsx")

# View column names
names(Case_compiled)
# Load required package
library(readxl)

# Read the dataset
Case_compiled <- read_excel("C:/Users/user/Downloads/18th October/archive 2/Case_compiled.xlsx")

# Aggregate total confirmed cases by province
cases_by_province <- tapply(Case_compiled$confirmed...6, Case_compiled$province...2, sum, na.rm = TRUE)

# Create a basic barplot
barplot(cases_by_province,
        main = "Total Confirmed COVID-19 Cases by Province",
        xlab = "Province",
        ylab = "Total Confirmed Cases",
        col = "lightcoral",
        border = "darkred",
        las = 2,                # Rotate labels for readability
        cex.names = 0.8)


