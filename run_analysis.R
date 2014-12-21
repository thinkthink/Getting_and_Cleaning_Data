# 1. Merges the training and the test sets to create one data set.

   x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
   x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
   x_data <- rbind(x_test,x_train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

  features <- read.table("./UCI HAR Dataset/features.txt")[,2]
  names(x_data)=features
  extract_features <- grep("mean|std", features)
  extract_x_data <- x_data[,extract_features]

# 3. Uses descriptive activity names to name the activities in the data set
   activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
   names(activity_labels) <- c("No","Activity")

# 4. Appropriately labels the data set with descriptive variable names. 
   subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")   
   subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
   subject_data<-rbind(subject_test,subject_train)
   names(subject_data) <- "Subject"

   y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
   y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")
   y_data <- rbind(y_test,y_train)
   names(y_data) <- "Activity"
    merage <- merge(extract_x_data,activity_labels)

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each 

variable for each activity and each subject.
write.table(merage,file="data.csv",sep=",",row.name=FALSE)
