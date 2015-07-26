---
title: "CodeBook"
author: "Rodrigo Araujo"
date: "July 25, 2015"
output: html_document
---

## Project Description
This project creates a tidy dataset based on the Human Activity Recognition 
Using Smartphones Data Set. 

##Study design and data processing

###Collection of the raw data
The dataset was dawloaded from the UCI website. The link to the original file is 
 [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Notes on the original (raw) data 
The original dataset contain accelerometer and gyroscope data from 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist.

##Creating the tidy datafile

###Guide to create the tidy data file

 1. Download the data from [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
 2. Extract the zip file to your workspace directory
 3. Copy the run_analysis.R script to your workspace directory 
 4. Run the run_analysis.R script
     
###Cleaning of the data
The run_analysis.R script reads the train and test portions of the UCI HAR 
Dataset and merge them together in a single file. After that, it extracts from 
the original file the measurements that contains information related to means 
and standard deviation. Later on, it ranames the original feature names to a more 
descriptive naming. Finally, it creates an independent tidy data set with the 
average of each variable for each activity and each subject. More details on how to run the script is described in the README.md file.

##Description of the variables in the activityAndSubjectData.txt file
General description of the file including:
 
  1. 'data.frame':	180 obs. of  68 variables: 
  2. The two first variables of the data frame are subjects and activities. The remaining 66 variables are numerial variables if mean and standard deviation of different acceleration and gyroscope measurement that will be explained in the next section.
  

###Variable 1 - subjects 
An identifier of the subject who carried out the experiment

 - int
 - 1..30
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

###Variable 2 - activities
Activity label. 

 - Level
 - Factor w/ 6 levels "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "LAYING","SITTING", "STANDING", "LAYING"..: 1 2 3 4 5 6 
 
###Variable 3 - MeanTimeDomainBodyAccelerationInX 
Mean value of the body acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

##Variable 4 - MeanTimeDomainBodyAccelerationInY 
Mean value of the body acceleration in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 5 - MeanTimeDomainBodyAccelerationInZ 
Mean value of the body acceleration in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 6 - StandardDevTimeDomainBodyAccelerationInX 
Standard deviaion value of the body acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 7 - StandardDevTimeDomainBodyAccelerationInY 
Standard deviaion value of the body acceleration in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 8 - StandardDevTimeDomainBodyAccelerationInZ 
Standard deviaion value of the body acceleration in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 9 - MeanTimeDomainGravityAccelerationInX 
Mean value of the gravity acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 10 - MeanTimeDomainGravityAccelerationInY 
Mean value of the gravity acceleration in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 11 - MeanTimeDomainGravityAccelerationInZ 
Mean value of the gravity acceleration in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 12 - StandardDevTimeDomainGravityAccelerationInX 
Standard deviation value of the gravity acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 13 - StandardDevTimeDomainGravityAccelerationInY 
Standard deviation value of the gravity acceleration in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 14 - StandardDevTimeDomainGravityAccelerationInZ 
Standard deviation value of the gravity acceleration in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 15 - MeanTimeDomainJerkOfTheBodyInX 
Mean value of the jerk of the body on the X axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 16 - MeanTimeDomainJerkOfTheBodyInY 
Mean value of the jerk of the body on the Y axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 17 - MeanTimeDomainJerkOfTheBodyInZ 
Mean value of the jerk of the body on the Z axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 18 - StandardDevTimeDomainJerkOfTheBodyInX 
Standard deviation value of the jerk of the body on the X axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 19 - StandardDevTimeDomainJerkOfTheBodyInY 
Standard deviation value of the jerk of the body on the Y axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 20 - StandardDevTimeDomainJerkOfTheBodyInZ 
Standard deviation value of the jerk of the body on the Z axis of the phone

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 21 - MeanTimeDomainBodyGyroInX 
Main value of the velocity vector measured by the gyroscope in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 22 - MeanTimeDomainBodyGyroInY 
Main value of the velocity vector measured by the gyroscope in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 23 - MeanTimeDomainBodyGyroInZ 
Main value of the velocity vector measured by the gyroscope in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 24 - StandardDevTimeDomainBodyGyroInX 
Standard Deviation value of the velocity vector measured by the gyroscope in the 
X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 25 - StandardDevTimeDomainBodyGyroInY 
Standard Deviation value of the velocity vector measured by the gyroscope in the 
Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 26 - StandardDevTimeDomainBodyGyroInZ 
Standard Deviation value of the velocity vector measured by the gyroscope in the 
Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 27 - MeanTimeDomainJerkOfTheBodyGyroInX 
Mean value of the velocity vector of the jerk of the body in the 
X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 28 - MeanTimeDomainJerkOfTheBodyGyroInY 
Mean value of the velocity vector of the jerk of the body in the 
Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 29 - MeanTimeDomainJerkOfTheBodyGyroInZ 
Mean value of the velocity vector of the jerk of the body in the 
Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 30 - StandardDevTimeDomainJerkOfTheBodyGyroInX 
Standard deviation value of the velocity vector of the jerk of the body in the 
X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 31 - StandardDevTimeDomainJerkOfTheBodyGyroInY 
Mean value of the velocity vector of the jerk of the body in the 
Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 32 - StandardDevTimeDomainJerkOfTheBodyGyroInZ 
Mean value of the velocity vector of the jerk of the body in the 
Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 33 - MeanTimeDomainBodyAccelerationMagnitudeInX 
Mean value of the magnitude of the body acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 34 - StandrdDevTimeDomainBodyAccelerationMagnitudeInX  
Standard deviation value of the magnitude of the body acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 35 - MeanTimeDomainGravityAccelerationMagnitude 
Mean value of the magnitude of the gravity acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 36 - StandardDevTimeDomainGravityAccelerationMagnitude  
Standard deviation value of the magnitude of the gravity acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 37 - MeanTimeDomainJerkOfTheBodyMagnitude  
Mean value of the magnitude of jerk of the body 

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 38 - StandardDevTimeDomainJerkOfTheBodyMagnitude 
Standard deviation value of the magnitude of jerk of the body

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 39 - MeanTimeDomainBodyGyroscopeMagnitude
Mean value of the magnitude of the velocity vector

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 40 - StandardDevTimeDomainBodyGyroscopeMagnitude 
Standard deviation value of the magnitude of the velocity vector

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1
###Variable 41 - MeanTimeDomainJerkOfTheBodyGyroscopeMagnitude
Mean value of the magnitude of the velocity vector in the jerk of the body

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1
 
###Variable 42 - StandardDevTimeDomainJerkOfTheBodyGyroscopeMagnitude
Standard deviation value of the magnitude of the velocity vector in the jerk of the body

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 43 - MeanFrequencyDomainBodyAccelerationInX
Mean value in the frequency domain of the body acceleration in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 44 - MeanFrequencyDomainBodyAccelerationInY
Mean value in the frequency domain of the body acceleration in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 45 - MeanFrequencyDomainBodyAccelerationInZ
Mean value in the frequency domain of the body acceleration in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 46 - StandardDevFrequencyDomainBodyAccelerationInX
Standard deviation value in the frequency domain of the body acceleration in the
X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 47 - StandardDevFrequencyDomainBodyAccelerationInY
Standard deviation value in the frequency domain of the body acceleration in the
Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 48 - StandardDevFrequencyDomainBodyAccelerationInZ
Standard deviation value in the frequency domain of the body acceleration in the
Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 49 - MeanFrequencyDomainJerkOfTheBodyInX
Mean value in the frequency domain of the jerk of the body in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 50 - MeanFrequencyDomainJerkOfTheBodyInY
Mean value in the frequency domain of the jerk of the body in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 51 - MeanFrequencyDomainJerkOfTheBodyInZ
Mean value in the frequency domain of the jerk of the body in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 52 - StandardDevFrequencyDomainJerkOfTheBodyInX
Standard deviation value in the frequency domain of the jerk of the body in the 
X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 53 - StandardDevFrequencyDomainJerkOfTheBodyInY
Standard deviation value in the frequency domain of the jerk of the body in the 
Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 54 - StandardDevFrequencyDomainJerkOfTheBodyInZ
Standard deviation value in the frequency domain of the jerk of the body in the 
Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 55 - MeanFrequencyDomainBodyGyroscopeInX
Mean value in the frequency domain of the velocity vector in the X axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 56 - MeanFrequencyDomainBodyGyroscopeInY
Mean value in the frequency domain of the velocity vector in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 57 - MeanFrequencyDomainBodyGyroscopeInZ
Mean value in the frequency domain of the velocity vector in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 58 - StandardDevFrequencyDomainBodyGyroscopeInX
Standard deviation value in the frequency domain of the velocity vector in the X 
axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 59 - StandardDevFrequencyDomainBodyGyroscopeInY
Mean value in the frequency domain of the velocity vector in the Y axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 60 - StandardDevFrequencyDomainBodyGyroscopeInZ
Mean value in the frequency domain of the velocity vector in the Z axis

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 61 - MeanFrequencyDomainBodyAccelerationMagnitude
Mean value of the magnitude of the body acceleration in the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 62 - StandardDevFrequencyDomainBodyAccelerationMagnitude
Standard deviation value of the magnitude of the body acceleration in the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 63 - MeanFrequencyDomainJerkOfTheBodyMagnitude
Mean value of the magnitude of the jerk of the body in the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 64 - StandardDevFrequencyDomainJerkOfTheBodyMagnitude
Standard deviation value of the magnitude of the jerk of the body in the 
frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (gravity units 'g') normalized between -1 and 1

###Variable 65 - MeanFrequencyDomainBodyGyroscopeMagnitude
Mean value of the magnitude of the velocity vector in the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 66 - StandardDevFrequencyDomainBodyGyroscopeMagnitude
Standard deviation value of the magnitude of the velocity vector in the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 67 - MeanFrequencyDomainJerkOfTheBodyGyroscopeMagnitude
Mean value of the magnitude of the velocity vector of the jerk of the body in 
the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1

###Variable 68 - StandardDevFrequencyDomainJerkOfTheBodyGyroscopeMagnitude
Standard deviation value of the magnitude of the velocity vector of the jerk of the body in 
the frequency domain

 - Numeric
 - [-1, 1]
 - Unit of measurement (radians/second) normalized between -1 and 1


