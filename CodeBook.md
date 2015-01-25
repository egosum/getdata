# Getting and Cleaning Data: Code Book

## Script variables

`activity_labels` contains the data from the `activity_labels.txt` file. It contains the activity names to be used:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- LAYING

`features` contains the data from the `features.txt` file. It contains the features which are measured, these will not be enumerated since there are many of them.

`X` contains the merged data from the training and test data sets, `x` type of files, which contain the actual data.

`mean_std_names` contains the feature names whose name contains `mean` or `std` (standard deviation).

`mean_and_std_data` is a subset of `X` which only contains the data from mean or standard deviation measures.

`Y` contains the merged data from the training and test data sets, `y` type of files, which contain the labels for the data in the `x` files (no pun intended).

`mean_and_std_with_labels` contains the merged `mean_and_std_data` with `Y` data sets. They are merged by column (`cbind`)

`subjects` contains the merged data from the training and test data sets, `subject` type of files, which contain the subjects who performed activities.

`average_data` contains the average of each variable for each activity and each subject. 

## Script functions

`mergeFiles` is a function which merges the `train` and `test` data sets for a given type.

`file` is an internal function of `mergeFiles` which builds the path to the file which contains the data.

## Script output

This script creates a tidy data set in the file `average_data.txt` in the R working directory