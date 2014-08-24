#Getting and Cleaning Data Course Project

### Code Book
The codebook describes the sets and variables which are processed by the run_analysis.R script. 

#### INFORMATION ON SOURCE DATA
The Human Activity Recognition database contains a multivariate, time-series dataset with 10299 rows and 561 features recording 6 activities performed by 30 volunteers aged 18 to 48. The volunteers have been randomly divided into two sets, a training set with 70% of the volunteers and a test set with the remaining 30%. The file features_info.txt provides a detailed description of the features in the raw dataset.
The volunteers were equipped with waist-mounted Samsung Galaxy S II smartphones. The accelerometer and gyroscope embedded in the smartphones capture 3-axial linear acceleration and 3-axial angular velocity of participant activities at a constant rate of 50Hz. All sensor signals were pre-processed with noise filters then sampled in fixed-width of 128 readings per window. 

#### DATA SETS IN USE IN THE SCRIPT
##### 1.  Information files: 
a.	README
b.	 features_info 

##### 2.	Files containing main variables: 
a.	features set
b.	activity_labels (WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 

##### 3.	Training datasets:
a. X_train.txt, corresponding to the training set 
b. y_train.txt, corresponding to the training labels
c. subject_train.txt, corresponding to volunteer activities.

##### 4.	Test datasets:
a. X_test.txt, corresponding to the test set 
b. y_test.txt, corresponding to the test labels
c. subject_test.txt corresponding volunteer activities.

5.	Various signal measurement sets.

#### MODIFYIING VARIABLES  
##### In the cleanup process, the run_analysis.R script produces:
1.	Variables trainData, trainLabel and trainSubject from the training sets,
2.	Variables testData, testLabel and testsubject  from the test sets.

##### The run_analysis.R script applies the following changes:
1.	Names of columns with mean and standard deviation values have the first letter of 'mean' and 'std' capitalized and embedded non-crucial symbols such as '()' and '-'.eliminated.Thus,     
             Column tBodyAcc-mean()-X is changed to tBodyAccMeanX     
             Column tBodyAcc-std()-Z is changed to tBodyAccStdZ     
             Column tBodyAcc-mean()-X is changed to tBodyAccMeanX    
             Column tBodyAcc-std()-Z is changed to tBodyAccStdZ    
             
2.	The first two columns of the mergedData set, are renamed "subject" and "activity". The "subject" column refers to the volunteers and contains numbers from 1 to 30; the "activity" column refers to the activities performed by the subjects and contains 6 activity names, (WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). All other columns in the datset contain the diufferent measurement of activities performed by subjects. These measurement range between, but not including, -1 and 1.

#### PRODUCED SETS
##### The run_analysis.R script outputs several sets:
1.	mergedData from train and test sets,
2.	joinData from trainData and testData,  
3.	JoinLabel from trainLabel and testLabel,  
4.	JoininSubject from  trainSubject and testSubject,
5.	tidyData.txt, a final  txt file of results.
