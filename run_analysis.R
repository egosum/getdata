#  You should create one R script called run_analysis.R that does the following.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

mergeFiles <- function(type, names) {
  file <- function(select, type) {
    paste0("./UCI HAR Dataset/", select, "/", type, "_", select, ".txt")
  }
  test  <- read.table(file("test", type), col.names=names)
  train <- read.table(file("train", type), col.names=names)
  rbind(test, train)
}

# 1. Merges the training and the test sets to create one data set.
X <- mergeFiles("X", features[,2])

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std_names <- features[grep("(mean|std)\\(", features[,2]),]
mean_and_std_data <- X[,mean_std_names[,1]]

# 3. Uses descriptive activity names to name the activities in the data set
Y <- mergeFiles("y", c("activity"))

for (i in 1:nrow(activity_labels)) {
  code <- as.numeric(activity_labels[i, 1])
  name <- as.character(activity_labels[i, 2])
  Y[Y$activity == code, ] <- name
}

# 4. Appropriately labels the data set with descriptive activity names. 
mean_and_std_with_labels <- cbind(Y, mean_and_std_data)

# 5. Creates a second, independent tidy data set with the average of each variable 
#    for each activity and each subject. 
subjects <- mergeFiles("subject", c("subject"))

average_data <- aggregate(X, by = list(activity = Y[,1], subject = subjects[,1]), mean)

write.table(average_data, file='average_data.txt', row.names=FALSE)