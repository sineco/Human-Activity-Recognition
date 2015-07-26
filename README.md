
## README

# Human-Activity-Recognition
Creates a tidy dataset from the original Human Activity Recognition Using Smartphones Data Set 


The provided script was developed using R version.

Before running run_analysis.R the following packages are necessary to be installed:
 
 1. reshape2
 2. dplyr
 
Run:

```{r}
download.packages("reshape2")
```
```{r}
download.packages("dplyr")
```
 
Download the original data and copy to your working directory. Follow the steps below:

 1. Download the data from [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
 2. Extract the zip file to your working directory
 3. Copy the run_analysis.R script to your working directory 
 

The provided script performs the folowwing steps:

 1. Read the downloaded files from the extracted directory '/UCI HAR Dataset/'
 2. Merges the training and the test sets to create one data set
 3. Extracts only the measurements on the mean and standard deviation for each measurement
 4. Rename activity names in the data set
 5. Appropriately labels the data set with descriptive variable names
 6. Reshape the data to show the mean of the variables by activity and by 
 subject
 7. Outputs the result data in a .txt file created in the working directory

To run the provided script:

 1. Download the run_analysis.R script
 2. Open R (recommended version 3.2.0) 
 3. Set the working directory of R to the same directory of run_analysis.R
 4. source("run_analysis.R")
 
```{r}
source("run_analysis.R")
```
