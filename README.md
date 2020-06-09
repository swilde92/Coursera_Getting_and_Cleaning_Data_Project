README

==================================================================
Course project for the Getting and Cleaning data course on Coursera
Completed in June of 2020
Sarah Wilde
==================================================================

This assignment is to demonstrate my ability to collect, work with, and clean a data set. 

I used data from the Human Activity Recognition Using Smartphones Dataset, Version 1.0 obtained from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

==================================================================
Information on the raw dataset used is below: 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

==================================================================
This dataset output from this project includes the following files:

- 'README.md'

- 'CodeBook.md': Shows information about the .R script that processes the data, and information about the dataset used. 

- 'run_analysis.R': R script that pulls in and processes the data to clean, tidy formats. 
