# Getting and Cleaning Data: Final Project

## Codebook

### The data

The dataset produced by **run_analysis.R** script, using as its primary source the compressed dataset from this URL: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and fully described in this URL: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). As described in README.md, this dataset was extracted from 30 volunteers using a Samsung Galaxy S in order to capture the volunteer's movements from 6 activities. This resulted in a dataset with more than 10 thousand records and 561 features. The data contained in this dataset is explained there, also the way the data was obtained.

### The transformations

In order to create a tidy dataset, I completed the following steps:

1. Read 'activities.txt' to get the label of all the activities.
2. Read 'features.txt' to obtain all the characteristics extracted from the volunteers.
3. Read the data:
  3.1. Read the train data from X_train.txt in a data frame and labelled the columns. I appended the 'subject_train.txt' and the 'Y_train.txt' data to the data frame, whose columns where labelled 'Subject' and 'Y' respectively.
  3.2. I executed the same steps describbed above to the test data.
  3.3. I merged the train data with the test data.
4. Extracted the columns with suffix 'mean', 'std' and 'meanFreq'. I also kept in the resulting data frame the columns 'Y' and 'Subject'.
5. Appended to the data frame the labels of the activities.
6. Executed some feature renaming:
  6.1. Renamed the last column from 'Name' to 'Activity.Name', so it represents better what the variable represents.
  6.2. Replaced 'meanFreq' suffix with a more meaningful name, which I believe is 'Weighted.Average.
  6.3. Replaced 't' prefix with what it stands for - Time
  6.4. Replaced 'f' prefix with what it stands for - Frequency Domain
7. I wrote the resulting file in 'tidy_har_dataset.txt'

### Feature list:

Below there is an extensive list of the final dataset features:

* "Activity.Id"
* "Time.BodyAcc.mean...X"
* "Time.BodyAcc.mean...Y"
* "Time.BodyAcc.mean...Z"
* "Time.BodyAcc.std...X"
* "Time.BodyAcc.std...Y"
* "Time.BodyAcc.std...Z"
* "Time.GravityAcc.mean...X"
* "Time.GravityAcc.mean...Y"
* "Time.GravityAcc.mean...Z"
* "Time.GravityAcc.std...X"
* "Time.GravityAcc.std...Y"
* "Time.GravityAcc.std...Z"
* "Time.BodyAccJerk.mean...X"
* "Time.BodyAccJerk.mean...Y"
* "Time.BodyAccJerk.mean...Z"
* "Time.BodyAccJerk.std...X"
* "Time.BodyAccJerk.std...Y"
* "Time.BodyAccJerk.std...Z"
* "Time.BodyGyro.mean...X"
* "Time.BodyGyro.mean...Y"
* "Time.BodyGyro.mean...Z"
* "Time.BodyGyro.std...X"
* "Time.BodyGyro.std...Y"
* "Time.BodyGyro.std...Z"
* "Time.BodyGyroJerk.mean...X"
* "Time.BodyGyroJerk.mean...Y"
* "Time.BodyGyroJerk.mean...Z"
* "Time.BodyGyroJerk.std...X"
* "Time.BodyGyroJerk.std...Y"
* "Time.BodyGyroJerk.std...Z"
* "Time.BodyAccMag.mean.."
* "Time.BodyAccMag.std.."
* "Time.GravityAccMag.mean.."
* "Time.GravityAccMag.std.."
* "Time.BodyAccJerkMag.mean.."
* "Time.BodyAccJerkMag.std.."
* "Time.BodyGyroMag.mean.."
* "Time.BodyGyroMag.std.."
* "Time.BodyGyroJerkMag.mean.."
* "Time.BodyGyroJerkMag.std.."
* "FrequencyDomain.BodyAcc.mean...X"
* "FrequencyDomain.BodyAcc.mean...Y"
* "FrequencyDomain.BodyAcc.mean...Z"
* "FrequencyDomain.BodyAcc.std...X"
* "FrequencyDomain.BodyAcc.std...Y"
* "FrequencyDomain.BodyAcc.std...Z"
* "FrequencyDomain.BodyAcc.WeightedAverage...X"
* "FrequencyDomain.BodyAcc.WeightedAverage...Y"
* "FrequencyDomain.BodyAcc.WeightedAverage...Z"
* "FrequencyDomain.BodyAccJerk.mean...X"
* "FrequencyDomain.BodyAccJerk.mean...Y"
* "FrequencyDomain.BodyAccJerk.mean...Z"
* "FrequencyDomain.BodyAccJerk.std...X"
* "FrequencyDomain.BodyAccJerk.std...Y"
* "FrequencyDomain.BodyAccJerk.std...Z"
* "FrequencyDomain.BodyAccJerk.WeightedAverage...X"
* "FrequencyDomain.BodyAccJerk.WeightedAverage...Y"
* "FrequencyDomain.BodyAccJerk.WeightedAverage...Z"
* "FrequencyDomain.BodyGyro.mean...X"
* "FrequencyDomain.BodyGyro.mean...Y"
* "FrequencyDomain.BodyGyro.mean...Z"
* "FrequencyDomain.BodyGyro.std...X"
* "FrequencyDomain.BodyGyro.std...Y"
* "FrequencyDomain.BodyGyro.std...Z"
* "FrequencyDomain.BodyGyro.WeightedAverage...X"
* "FrequencyDomain.BodyGyro.WeightedAverage...Y"
* "FrequencyDomain.BodyGyro.WeightedAverage...Z"
* "FrequencyDomain.BodyAccMag.mean.."
* "FrequencyDomain.BodyAccMag.std.."
* "FrequencyDomain.BodyAccMag.WeightedAverage.."
* "FrequencyDomain.BodyBodyAccJerkMag.mean.."
* "FrequencyDomain.BodyBodyAccJerkMag.std.."
* "FrequencyDomain.BodyBodyAccJerkMag.WeightedAverage.."
* "FrequencyDomain.BodyBodyGyroMag.mean.."
* "FrequencyDomain.BodyBodyGyroMag.std.."
* "FrequencyDomain.BodyBodyGyroMag.WeightedAverage.."
* "FrequencyDomain.BodyBodyGyroJerkMag.mean.."
* "FrequencyDomain.BodyBodyGyroJerkMag.std.."
* "FrequencyDomain.BodyBodyGyroJerkMag.WeightedAverage.."
* "Subject"
* "Activity.Name"
