---
title: "CodeBook"
author: "Sara Menke"
date: "Friday, January 23, 2015"
output: html_document
---

My tidy data output has 68 variables and 180 observations.  
The t at the beginning of any of the variables denotes they are time measurments.  
The f at the beginning of any of the variables denotes the fast fourier transform was applied to the measurements.  
The Acc in any of the variables denotes they were measured with the accelerometer.  
The Gyro in any of the variables denotes they were measured with the gyroscope.  

The 180 observations come from each of the 30 subjects performing all 6 activities.  

The 68 variables come from the following variables:

The first two variables are subject ID and activity.  

Next, these 5 variables are each separated into X, Y, and Z components.
These variables also have a mean variable and a standard deviation variable associated with it.
So, these 5 variables account for 30 variables in the tidy data set.

+ tBodyAcc
+ tGravityAcc
+ tBodyAccJerk
+ tBodyGyro
+ tBodyGyroJerk

Next, these 5 variable do not break into X, Y, and Z, but they do split into mean and standard deviation.  
So, these 5 variables account for 10 variables in the tidy data set.

+ tBodyAccMag
+ tGravityAccMag
+ tBodyAccJerkMag
+ tBodyGyroMag
+ tBodyGyroJerkMag

Next, these 3 variables are each separated into X, Y, and Z components.
These variables also have a mean variable and a standard deviation variable associated with it.
So, these 5 variables account for 18 variables in the tidy data set.

+ fBodyAcc-XYZ
+ fBodyAccJerk-XYZ
+ fBodyGyro-XYZ

Finally, these 4 variable do not break into X, Y, and Z, but they do split into mean and standard deviation.  
So, these 5 variables account for 8 variables in the tidy data set.

+ fBodyAccMag
+ fBodyAccJerkMag
+ fBodyGyroMag
+ fBodyGyroJerkMag

This accounts for all 68 variables.

