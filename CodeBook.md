# Data
  The data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

  Here are the data for the project: 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Variables
  x_test： Test set
  x_train： Training set
  x_data： Combind x_test and x_train
  features： The accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
  extract_features： Extract the measurements on the mean and standard deviation for each measurement
  extract_x_data： Extract the test and training data which measurement on the mean and standard deviation
  activity_labels： Activity labels ; including six activites(WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING and LAYING
  subject_test： The subject in test ; the value between 2 and 24
  subject_train： The subject in training ; the value between 1 and 30
  y_test：Test labels
  y_train：Training labels
  y_data：Combind y_test and y_train
  merge：Merge extract_x_data and activity_labels

## About Script

1. Merges the training and the test sets to create one data set.
      - using read.table() to get the data from files
      - using rbind() to combind different tables
      
2. Extracts only the measurements on the mean and standard deviation for each measurement.
     - using grep() to extract the measurements

3. Uses descriptive activity names to name the activities in the data set
     - using names() to name the activites

4. Appropriately labels the data set with descriptive variable names.
     - using read.table() , rbind() ,names()and merge() to labels the data set

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     - using write.table() to creat a text file
