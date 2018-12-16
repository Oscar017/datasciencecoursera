### CODEBOOK

The run_analysis.R script helps to get and clean up the data as per described in the course project's requirements:

1.# Download the dataset
  + dataset downloaded and extracted under the folder UCI HAR Dataset

2.# Assign each data to variables
  + features <- features.txt
  the data comes from the accelerometer and gyroscope 3-axial raw signal
  + activities <- activity_labels.txt
  List of activities performed during measurements and its codes
  + x_test <- test/X_test.txt
  contains features test data
  + subject_test <- test/subject_test.txt
  contains test subjects being observed
  + y_test <- test/y_test.txt
  contains test data of activities labels
  + x_train <- test/x_train.txt
  contains features train data
  + y_train <- test/y_train.txt
  contains train data of activities labels
  + subject_train <- test/subject_train.txt
  contains train data of subjects being observed
  
  
3.# Merge the training and test sets to create one data set
  + by using the rbind() function, it merge the x_train and x_test data and y_train and y_test data in x and y respectively
  + rbind() function also helps to merge the subject_train and subject_test data 
  + cbind() function is used to merge subject, x and y data to create the merged_data 


4.# Extracts only the measurements on mean and standard deviation for each measurement
  +tidy_data is created by subsetting the merged_data and select only the subject, code and mean and standard deviation measurement.



5.# Uses descriptive activity names to name the activities in the data set
  +All the numbers in the code column of the tidy_data is replaced by the activity variable



6.# Appropriately labels the data set with descriptive variable names
  +All "Acc"" in column is replaced by Accelerometer
  +All "Gyro"  in column is replaced by Gyroscope
  +All "BodyBody" in column is replaced by Body
  +All the Mag in column is replaced by Magnitude
  +All the character that starts with f in the column is replaced Frequency
  +All the code column is replaced by activities
  +All the character that starts with t is replaced by Time



7.# From the data in step4, creates a second independent tidy data set with the average of each variable for each activity and each subject.

  +final_data is created by taking the means from each variable and each subject after groupby the subject and activity from the tidy_data data
  +the file is then exported to final_data.txt


