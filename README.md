Getting_and_Cleaning_Data
=========================
## Project Description
   

## Raw Data Source
 The data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## About Script

# 1. Merges the training and the test sets to create one data set.
      - using read.table() to get the data from files
      - using rbind() to combind different tables
      
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
     - using grep() to extract the measurements

# 3. Uses descriptive activity names to name the activities in the data set
     - using names() to name the activites

# 4. Appropriately labels the data set with descriptive variable names.
    - using read.table() , rbind() ,names()and merge() to labels the data set

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each 
    variable for each activity and each subject.
   - using write.table() to creat a text file
