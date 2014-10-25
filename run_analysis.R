setwd(paste('/home/andre/Documents/Coursera/DataScience',
            '/GettingAndCleaningData/getting-and-cleaning-data-final-project/', sep = ''))

downloadData <- function() {
    fileUrl <- paste("https://d396qusza40orc.cloudfront.net/",
                     "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                     sep = "")
    filename <- "UCI_HAR_Dataset.zip";
    if (!file.exists(filename)) {
        download.file(url = fileUrl, destfile = filename, method = "curl")
        unzip(zipfile = "UCI_HAR_Dataset.zip")
    }
}

readActivities <- function() {
    read.table('UCI HAR Dataset/activity_labels.txt', sep = '',
               header = FALSE, col.names = c('id', 'Name'))
}

readFeatures <- function() {
    read.table(
        'UCI HAR Dataset/features.txt', sep = '',
        header = FALSE, col.names = c('id', 'Feature.Name'))
}

readTrainData <- function(features) {
    data <- read.table('UCI HAR Dataset/train/X_train.txt',
                       sep = '', header = FALSE,
                       col.names = features$Feature.Name)
    data$Activity.Id <- read.table('UCI HAR Dataset/train/y_train.txt',
                                   sep = '', header = FALSE,
                                   col.names = c("Y"))$Y
    data$Subject <- read.table('UCI HAR Dataset/train/subject_train.txt',
                               sep = '', header = FALSE,
                               col.names = c("Subject"))$Subject
    data
}

readTestData <- function(features) {
    data <- read.table('UCI HAR Dataset/test/X_test.txt',
                       sep = '', header = FALSE,
                       col.names = features$Feature.Name)
    data$Activity.Id <- read.table('UCI HAR Dataset/test/y_test.txt',
                                   sep = '', header = FALSE,
                                   col.names = c("Y"))$Y
    data$Subject <- read.table('UCI HAR Dataset/test/subject_test.txt',
                               sep = '', header = FALSE,
                               col.names = c("Subject"))$Subject
    data
}

# 1. Merges the training and the test sets to create one data set.
readData <- function(features) {
    trainData <- readTrainData(features)
    testData <- readTestData(features)
    rbind(trainData, testData)
}

# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
extractMeanAndSTD <- function(data) {
    # I decided to keep the meanFreq variables since the means are calculated
    # using this variable
    columnIndices <- grep("mean|std", names(data))
    data[, c(columnIndices, 562, 563)]
}

# 3. Uses descriptive activity names to name the activities in the data set.
addDescriptiveActivities <- function(data, activities) {
    # I decided to keep the Activity.Id column since it is easy to look for
    # records of some activity by its identifier
    merge(data, activities, by.x = "Activity.Id", by.y = "id",all = TRUE)
}

# 4. Appropriately labels the data set with descriptive variable names.
relabelColumns <- function(data) {
    # 1) Rename the last column from 'Name' to 'Activity.Name', so it
    # represents better what the variable represents
    colnames(data)[82] <- 'Activity.Name'
    # 2) Replace 'meanFreq' suffix with a more meaningful name, which I believe
    # is 'Weighted.Average'
    colnames(data) <- gsub('meanFreq', 'WeightedAverage', names(data))
    # 3) Replace 't' prefix with what it stands for - Time
    colnames(data) <- gsub('^t', 'Time.', names(data))
    # 4) Replace 'f' prefix with what it stands for - Frequency Domain
    # http://en.wikipedia.org/wiki/Frequency_domain
    colnames(data) <- gsub('^f', 'FrequencyDomain.', names(data))
    data
}

downloadData()
activities <- readActivities()
features <- readFeatures()
data <- readData(features)
projectedData <- extractMeanAndSTD(data)
finalData <- addDescriptiveActivities(projectedData, activities)
finalData <- relabelColumns(finalData)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(finalData, file = 'tidy_har_dataset.txt', row.names = FALSE)