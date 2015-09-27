# Getting-CleaningDataProject2015
Course project for Coursera "Getting and Cleaning Data" course.

This repository contains the files required in the course project of the Coursera course "the Getting and Cleaning Data".

##Project Overview:

This project serves to demonstrate the student's ability to collect and clean an untidy data set that can be used for subsequent analysis. 
For this, it is required to submit the following:
- a tidy data.
- a link to a Github repository with a script, run_analysis.R, for performing the analysis.
- Should also be included in the repo 1) a code book that describes the variables, the data, and any transformations or work that were performed to clean up the data called CodeBook.md. 2) a README.md file that explains how all of the scripts work and how they are connected.

##Data Description:
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description of the data used in this project can be found at The [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Steps performed to create the tidy data set:

1. Download [the source data file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it in the data folder 'UCI HAR Dataset'.
2. Read data from the 6 files into 6 variables.
3. Merges the training and the test sets to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement.
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive names.
7. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The above steps will be performed by running the attached R script, run_analysis.R. The end result will be shown in the file tidy.txt.
