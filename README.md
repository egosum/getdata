# Getting and Cleaning Data: README

## Course Project

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Usage

1. Download the zip file containing the data from the Course Project page ([zip file link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Zip File"))
2. Unzip the contents on your R working directory.
3. Copy run_analysis.R file to your working directory.
3. Run `source("run_analysis.R")`. This will generate the file `average_data.txt`, which is the result of the script.

## Code Book

The `CodeBook.md` file contains all the details of the variables used in the script, as well as more detail on each of the steps required by the project.