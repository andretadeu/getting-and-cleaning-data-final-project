# Getting and Cleaning Data: Final Project

## Codebook

### The data

The dataset produced by **run_analysis.R** script, using as its primary source the compressed dataset from this URL: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and fully described in this URL: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). As described in README.md, this dataset was extracted from 30 volunteers using a Samsung Galaxy S in order to capture the volunteer's movements from 6 activities. This resulted in a dataset with more than 10 thousand records and 561 features. The data contained in this dataset is explained there, also the way the data was obtained.

### The transformations

In order to create a tidy dataset, I completed the following steps:

1. Read 'activities.txt' to get the label of all the activities.
2. Read 'features.txt' to obtain all the characteristics extracted from the volunteers.
3. Read the data:
  * Read the train data from X_train.txt in a data frame and labelled the columns. I appended the 'subject_train.txt' and the 'Y_train.txt' data to the data frame, whose columns where labelled 'Subject' and 'Y' respectively.
  * I executed the same steps describbed above to the test data.
  * I merged the train data with the test data.
4. Extracted the columns with suffix 'mean', 'std' and 'meanFreq'. I also kept in the resulting data frame the columns 'Y' and 'Subject'.
5. Appended to the data frame the labels of the activities.
6. Executed some feature renaming:
  * Renamed the last column from 'Name' to 'Activity.Name', so it represents better what the variable represents.
  * Replaced 'meanFreq' suffix with a more meaningful name, which I believe is 'Weighted.Average'.
  * Replaced 't' prefix with what it stands for - Time
  * Replaced 'f' prefix with what it stands for - Frequency Domain
7. I wrote the resulting file in 'tidy_har_dataset.txt'

### Feature list:

Below there is an extensive list of the final dataset features:

* "Activity.Id": integer
* "Time.BodyAcc.mean...X": double
* "Time.BodyAcc.mean...Y": double
* "Time.BodyAcc.mean...Z": double
* "Time.BodyAcc.std...X": double
* "Time.BodyAcc.std...Y": double
* "Time.BodyAcc.std...Z": double
* "Time.GravityAcc.mean...X": double
* "Time.GravityAcc.mean...Y": double
* "Time.GravityAcc.mean...Z": double
* "Time.GravityAcc.std...X": double
* "Time.GravityAcc.std...Y": double
* "Time.GravityAcc.std...Z": double
* "Time.BodyAccJerk.mean...X": double
* "Time.BodyAccJerk.mean...Y": double
* "Time.BodyAccJerk.mean...Z": double
* "Time.BodyAccJerk.std...X": double
* "Time.BodyAccJerk.std...Y": double
* "Time.BodyAccJerk.std...Z": double
* "Time.BodyGyro.mean...X": double
* "Time.BodyGyro.mean...Y": double
* "Time.BodyGyro.mean...Z": double
* "Time.BodyGyro.std...X": double
* "Time.BodyGyro.std...Y": double
* "Time.BodyGyro.std...Z": double
* "Time.BodyGyroJerk.mean...X": double
* "Time.BodyGyroJerk.mean...Y": double
* "Time.BodyGyroJerk.mean...Z": double
* "Time.BodyGyroJerk.std...X": double
* "Time.BodyGyroJerk.std...Y": double
* "Time.BodyGyroJerk.std...Z": double
* "Time.BodyAccMag.mean..": double
* "Time.BodyAccMag.std..": double
* "Time.GravityAccMag.mean..": double
* "Time.GravityAccMag.std..": double
* "Time.BodyAccJerkMag.mean..": double
* "Time.BodyAccJerkMag.std..": double
* "Time.BodyGyroMag.mean..": double
* "Time.BodyGyroMag.std..": double
* "Time.BodyGyroJerkMag.mean..": double
* "Time.BodyGyroJerkMag.std..": double
* "FrequencyDomain.BodyAcc.mean...X": double
* "FrequencyDomain.BodyAcc.mean...Y": double
* "FrequencyDomain.BodyAcc.mean...Z": double
* "FrequencyDomain.BodyAcc.std...X": double
* "FrequencyDomain.BodyAcc.std...Y": double
* "FrequencyDomain.BodyAcc.std...Z": double
* "FrequencyDomain.BodyAcc.WeightedAverage...X": double
* "FrequencyDomain.BodyAcc.WeightedAverage...Y": double
* "FrequencyDomain.BodyAcc.WeightedAverage...Z": double
* "FrequencyDomain.BodyAccJerk.mean...X": double
* "FrequencyDomain.BodyAccJerk.mean...Y": double
* "FrequencyDomain.BodyAccJerk.mean...Z": double
* "FrequencyDomain.BodyAccJerk.std...X": double
* "FrequencyDomain.BodyAccJerk.std...Y": double
* "FrequencyDomain.BodyAccJerk.std...Z": double
* "FrequencyDomain.BodyAccJerk.WeightedAverage...X": double
* "FrequencyDomain.BodyAccJerk.WeightedAverage...Y": double
* "FrequencyDomain.BodyAccJerk.WeightedAverage...Z": double
* "FrequencyDomain.BodyGyro.mean...X": double
* "FrequencyDomain.BodyGyro.mean...Y": double
* "FrequencyDomain.BodyGyro.mean...Z": double
* "FrequencyDomain.BodyGyro.std...X": double
* "FrequencyDomain.BodyGyro.std...Y": double
* "FrequencyDomain.BodyGyro.std...Z": double
* "FrequencyDomain.BodyGyro.WeightedAverage...X": double
* "FrequencyDomain.BodyGyro.WeightedAverage...Y": double
* "FrequencyDomain.BodyGyro.WeightedAverage...Z": double
* "FrequencyDomain.BodyAccMag.mean..": double
* "FrequencyDomain.BodyAccMag.std..": double
* "FrequencyDomain.BodyAccMag.WeightedAverage..": double
* "FrequencyDomain.BodyBodyAccJerkMag.mean..": double
* "FrequencyDomain.BodyBodyAccJerkMag.std..": double
* "FrequencyDomain.BodyBodyAccJerkMag.WeightedAverage..": double
* "FrequencyDomain.BodyBodyGyroMag.mean..": double
* "FrequencyDomain.BodyBodyGyroMag.std..": double
* "FrequencyDomain.BodyBodyGyroMag.WeightedAverage..": double
* "FrequencyDomain.BodyBodyGyroJerkMag.mean..": double
* "FrequencyDomain.BodyBodyGyroJerkMag.std..": double
* "FrequencyDomain.BodyBodyGyroJerkMag.WeightedAverage..": double
* "Subject": integer, ranges from 1 to 30
* "Activity.Name": integer, Levels: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
