## Getting and Cleaning Data
# Course Project

# Files path
fileTrain <- "./UCI HAR Dataset/train/X_train.txt"
fileTest <- "./UCI HAR Dataset/test/X_test.txt"
fileFeatures <- "./UCI HAR Dataset/features.txt"
fileSubjectTrain <- "./UCI HAR Dataset/train/subject_train.txt"
fileSubjectTest <- "./UCI HAR Dataset/test/subject_test.txt"
fileLabelTrain <- "./UCI HAR Dataset/train/Y_train.txt"
fileLabelTest <- "./UCI HAR Dataset/test/Y_test.txt"
fileActivities <- "./UCI HAR Dataset/activity_labels.txt"

# Read files
train <- read.table(fileTrain, header = FALSE, sep = "")
test <- read.table(fileTest, header = FALSE, sep = "")
feature <- read.table(fileFeatures, stringsAsFactors = FALSE)
subjectTrain <- read.table(fileSubjectTrain, col.names = "subjects")
subjectTest <- read.table(fileSubjectTest, col.names = "subjects")
labelTrain <- read.table(fileLabelTrain, col.names = "activities")
labelTest <- read.table(fileLabelTest, col.names = "activities")
activities <- read.table(fileActivities, col.names = c("id", "Class"))

## Step #1 - Merges the training and the test sets to create one data set.
#binding train and test datasets
dataset <- rbind(train, test)
subjects <- rbind(subjectTrain, subjectTest)
labels <- rbind(labelTrain, labelTest)

## Step #2 - Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
# Get selected columns from feature table (columns with mean|std)
library(dplyr)
featureNames <- feature$V2
selectedIndColumns <- grep("(mean|std)\\(.*\\)", featureNames)
dataset <- tbl_df(dataset)
selectedNames <- featureNames[selectedIndColumns]
dataset <- select(dataset, selectedIndColumns)
names(dataset) <- selectedNames

# Merge dataset with subjects
dataset <- cbind(dataset, subjects, labels)

## Step #3 - Uses descriptive activity names to name the activities in the data 
# set
# Lookup table activities
dataset$activities <- activities$Class[dataset$activities]

## Step #4 - Appropriately labels the data set with descriptive variable names
# Rename column names to a tidy description
source('raname_to_descriptive_col_names.R')
tidyColNames <- rename_to_descriptive_col_names()
names(dataset) <- tidyColNames

# Step #5 - From the data set in step 4, creates a second, independent tidy data
# set with the average of each variable for each activity and each subject.
library(reshape2)
# Combine all the variables
datasetMelt <- melt(dataset, id = c("activities", "subjects"), measures.vars =  
                        tidyColNames[1:66])

# Reshape the data to show the mean of the variables by activity and by subject
activityAndSubjectData <- dcast(datasetMelt, subjects + activities ~ variable, 
                                mean)
# Write the result data in a .txt file 
write.table(activityAndSubjectData, "./activityAndSubjectData.txt", 
            row.name=FALSE) 

