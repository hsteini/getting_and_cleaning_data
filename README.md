# getting_and_cleaning_data
project for the course geting and cleaning data

## how does the script run_analysis.R work

* all the needed files are in the working directory

** activity_labels.txt

** features_info.txt

** features.txt

** subject_test.txt

** subject_train.txt

** X_test.txt

** X_train.txt

** y_test.txt

** y_train.txt

* the libraries "dplyr" and "data.table" are needed

* the file "features.txt" is read and the data assigned to dataframe "features"

* in "features.txt" all the Vaiablenames of the SAMSUNG data is stored

* the file "activity_labels.txt" is read and the data assigned to "activity_labels"

* in the file "activity_labels.txt" six values are stored, "tp" is used as index for "activity_labels.txt"

* "activity_labels_new" is the datframe where the data from "file activity_labels.txt" and "tp" are stored

* Afterwards the colnames "movement" and "index" are assigned to activity_labels_new

* then "features" is transformed to a vector - because these are the columnames for "X_test.txt" and "X_train.txt"

* the "subject_test.txt" file is read and the data is assigned to the dataframe "subject_test"

* the file "y_test.txt" is read and the data is assigned to "y_test" and afterwards the columname  "activity_label" is assigned to it

* the file "X_test.txt" is read and the data is assigned to "X_test"

* with the function colnames the dataframe "X_test" gets his colnames which are stored in the vector "avector"

* the "test" data from the three dataframes "y_test", "subject_test" and "X_test" is stored in the dataframe "all_test"

* now the same steps that were done for the "test" data are now done for the "train" data in the next steps

* in the new dataframe "all" the dataframe "all_test" is attached to "all_train"

