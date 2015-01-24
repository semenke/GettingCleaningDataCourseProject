---
title: "README"
author: "Sara Menke"
date: "Friday, January 23, 2015"
output: html_document
---

This is an explanation for the run_analysis.R script that I used to create my tidy data set.


First, in lines 3-5 of code, I read in the files containting subject identifier, activities, and data for the test data set.

In line 6, I combined those data sets into one set for test.

Then, in lines 10-12 of code, I read in the files containting subject identifier, activities, and data for the training data set.

In line 13, I combined those data sets into one set for training.

In line 17, I combined the test and training data sets.  This completed step 1.

In line 22, I read in all the column names.
In line 23 and 24, I added the column names for subject ID and activity
In lines 25-27, I changes all the column names for the large, merged data set.
This completed step 4.

In line 32 and 33, I read in the activity labels and turn them into strings.
In line 34-36, I exchanged all the numbers in the activity column for the descriptive names. (These names explained in Code Book).
This completed step 3.

In line 39, I selected only the columns (variables) that were the mean or standard deviation.
In line 40, I ordered the column numbers in acsending order.
In line 41, I added the subject ID and activity column numbers.
In line 42, I made a new data set with only the mean and standard deviation columns.
This completed step 2.

In line 44, I made an empty vector to make the tidy data set for step 5.
In line 45-55, I loop through all 30 subjects(j) and all 6 activites(i) and calculate the mean for all the variables for each using sapply.  I then add these means to the tidy data vector.

In line 57, I turn the vector into a data frame.
In line 58,I turn the activity variable into a string so I can write in the activity names
In lines 59-70, I replaced the activity column with the activity names.

In line 72, I wrote the new tidy data set to a text file (this text file is submitted on Coursera)
This completed step 5.


