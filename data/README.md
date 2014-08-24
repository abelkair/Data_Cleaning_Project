## Getting and Cleaning Data Course Project

### README

The README file describes the process the script follows to acquire and manipulate the project datasets to meet the project requirements. 
PROCESS SUMMARY
The run_analysis.R script completes the project in the following steps:
1.  Data reading,
2.	Merging of the training and test sets to produce a unified dataset,
3.	Filtering out of all measurements from the merged dataset with the exception of columns with mean and standard deviation values, 
4.	Renaming columns in the merged dataset to make them easily identifiable, 
5.	Output of an independent tidy dataset of averages for each subject grouped by activity. This dataset will be uploaded to the student Github repository.

#### DATA SOURCE
.	Dataset site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

.	Original datasets:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#### DATA DESTINATION
Downloaded and uncompressed data and information files are located in the following local  folders: 

.	"~/Data_Cleaning_Project/"
This folder contains the information files: README and features_info and 
files of variables: features and activity_labels.
.	'~/Data_Cleaning_Project/train"
This folder contains X_train.txt, y_train.txt and subject_train.txt which form the training set, training labels and corresponding volunteer activities, respectively.

.	'~/Data_Cleaning_Project/test"
This folder contains X_test.txt, y_test.txt and subject_test.txt which form the test set, test labels and corresponding volunteer activities, respectively.

Each of the /train and /test folders contains an initial Signals subfolder of the measurements.

#### DATA READING
The run_analysis.R script performs the following steps to clean the data:
a.	Reads X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and produces trainData, trainLabel and trainSubject variables respectively.
b.	Reads X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and produces testData, testLabel and testsubject variables respectively.

#### DATA MERGING
The run_analysis script performs joint operations on the following dataset pairs:
a.	Joins trainData and testData and produces data frame, joinData,  
b.	Joins trainLabel and testLabel and produces data frame, joinLabel,  
c.	Joins trainSubject and testSubject and produces data frame, joinSubject,
d.	Extracts from the features.txt file columns with measurements on the mean and standard deviation and stores them in features dataset. 

#### DATA TIDYING
a.	The run_analysis.R script renames columns with mean and standard deviation values to capitalize the first letter of 'mean' and 'std' and removes unnecessary symbols such as '()' and '-'. 
b.	Re names the first two columns of the mergedData set, "subject" and "activity". The "subject" column contains integers from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names. All remaining columns contain measurements between, but not including, -1 and 1.
c.	Finally, run_analysis.R produces an independent tidy data set which contains averages of measurement of each activity and each subject for a total of 180 x 68 data frame. run_analysis.R uses write.table with row.name=FALSE to output in text form the final tidy dataset tidyData.txt in the current working directory. 
