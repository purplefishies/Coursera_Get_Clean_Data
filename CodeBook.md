---
title: "Code Book: Human Activity Recognition Using Smartphones Data Set"
author: "Jimi Dmaon
date: "May 22, 2015"
output: html_document
---


### Abstract
This project involves the analysis of 30 subjects being monitored performing 6 different activities using smart phone sensors.
The phones were able to perform measurements at 50Hz of 3-axial linear acceleration and 3-axial angular velocity measurements. The data was acquired during a training phase as well as a test collection phase.  The Activities were WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Data was collected using these devices and formatted into two data sets according to whether it was "test" or "training" data.


### Variables

* Activity
* Subject
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()


## Breakdown of the variables

### Subject
Is a number in the range [1:30]

### Activity
Is represented by a "level" and has one of the values of 
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Measurements

* tBodyAcc-XYZ - time Domain Body Acceleration: split into X-,Y-,Z- axes in data set [L/T^2^]
* tGravityAcc-XYZ - time Domain Gravity Acceleration: X-,Y-,Z- [L/T^2^]
* tBodyAccJerk-XYZ - time Domain Body Acceleration Jerk: X-,Y-,Z- [L/T^2^]
* tBodyGyro-XYZ - time Domain Gyro: X-,Y-,Z- [rad/T^2^]
* tBodyGyroJerk-XYZ - time Domain Body Gyro: X-,Y-,Z- [rad/T^2^]
* tBodyAccMag - time Domain Body Acceleration Magnitude: X-,Y-,Z- [L/T^2^]
* tGravityAccMag - time Domain Gravity Acceleration Magnitude: X-,Y-,Z- [L/T^2^]
* tBodyAccJerkMag - time Domain Body Acceleration Jerk Magnitude: X-,Y-,Z- [L/T^2^]
* tBodyGyroMag - time Domain Body Gyro Magnitude: X-,Y-,Z- [rad/T^2^]
* tBodyGyroJerkMag - time Domain Body Gyro Jerk Magnitude: X-,Y-,Z- [rad/T^2^]
* fBodyAcc-XYZ - freq Domain Body Acceleration: X-,Y-,Z- [L/T^2^]
* fBodyAccJerk-XYZ - freq Domain Body Acceleration Jerk: X-,Y-,Z- [L/T^2^]
* fBodyGyro-XYZ - freq Domain Body Gyro: X-,Y-,Z- [rad/T^2^]
* fBodyAccMag - freq Domain Body Acceleration Magnitude:: X-,Y-,Z- [L/T^2^]
* fBodyAccJerkMag - freq Domain Body Acceleration Jerk Magnitude: X-,Y-,Z- [L/T^2^]
* fBodyGyroMag - freq Domain Body Gyro Magnitude: X-,Y-,Z- [rad/T^2^]
* fBodyGyroJerkMag - freq Domain Gyro Jerk Magnitude: X-,Y-,Z- [rad/T^2^]

These variables include either "mean" or "std" in them. 


### Run

This was for debugging purposes. It was a level representing either "test" or "train"


Data Units are defined from this web site.
http://www.techbitar.com/sensoduino.html

