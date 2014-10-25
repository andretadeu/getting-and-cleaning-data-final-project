# Getting and Cleaning Data: Final Project

## READ ME

This project contains all the required files for the final project of 'Getting and Cleaning Data' course of Coursera, offered by Johns Hopkins Bloomberg School of Public Health.

The purpose of this project is to extract the relevant data from the following dataset: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). This dataset was extracted from 30 volunteers using a Samsung Galaxy S in order to capture the volunteer's movements from 6 activities. This resulted in a dataset with more than 10 thousand records and 561 features.

### Dataset

The dataset was splitted in two folders:
* /train - the subset of the dataset used for AI train
* /test - the subset of the dataset used to test the AI

The full structure in in the subsequent format:
* /test
  * Inertial Signals (folder not used)
    * body_acc_x_test.txt
    * body_acc_y_test.txt
    * body_acc_z_test.txt
    * body_gyro_x_test.txt
    * body_gyro_y_test.txt
    * body_gyro_z_test.txt
    * total_acc_x_test.txt
    * total_acc_y_test.txt
    * total_acc_z_test.txt
  * subject_test.txt (volunteer ID)
  * X_test.txt (561 features extracted from the volunteers above)
  * y_test.txt (Activity performed by the volunteers)
* /train
  * Inertial Signals (folder not used)
    * body_acc_x_train.txt
    * body_acc_y_train.txt
    * body_acc_z_train.txt
    * body_gyro_x_train.txt
    * body_gyro_y_train.txt
    * body_gyro_z_train.txt
    * total_acc_x_train.txt
    * total_acc_y_train.txt
    * total_acc_z_train.txt
  * subject_train.txt (volunteer ID)
  * X_train.txt (561 features extracted from the volunteers above)
  * y_train.txt (Activity performed by the volunteers)
* activity_labels.txt
* features_info.txt
* features.txt
* README.txt

### How to use

The script usage is straightforward:
1. Execute the following command in your command prompt: **git clone https://github.com/andretadeu/getting-and-cleaning-data-final-project.git**.
2. Open the RStudio.
3. Inside RStudio, open the script and set a working directory in *setwd* command.
4. Select all the script and press the 'Run' button.

The scripts loads the data from X_train.txt, y_train.txt and subject_train.txt and merges them in one data frame. Then I execute the same steps with the test data and I merge this resulting data frame with the previous data frame obtained from the training data.

After that, I select only the relevant columns, improve their names and write the resulting data frame out in 'tidy_har_dataset.txt' file.

### Results

The Results are 82 variables that are included in one of this groups: means, standard deviances and mean frequencies.

### Codebase

The Codebase.md file explains the transformation I operated in the original data set, what are the resulting variables and the data.
