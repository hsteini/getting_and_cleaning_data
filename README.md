# getting_and_cleaning_data
project for the course geting and cleaning data

## how does the script run_analysis.R work

* the libraries dplyr and data.table are needed

* the file features.txt is read and the data assigned to features
* in features.txt all the Vaiablenames of the SAMSUNG data is stored

* the file activity_labels.txt is read and the data assigned to activity labels
* in the file activity_labels.txt six values are stored, tp is used as index for activity_labels.txt
* activity_labels_new is the file activity_labels.txt and tp
* Afterwards the colnames "movement" and "index" are assigned to activity_labels_new





run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
