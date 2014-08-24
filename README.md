Data_Cleaning_Project
=====================

"Final Project for getting and cleaning data" course
Getting and Cleaning Data 

## Introduction

The Human Activity Recognition database* is a repository of daily activities of 30 volunteers aged 18 to 48. The volunteers, equipped with waist-mounted Samsung Galaxy S II smartphones,  perform six video-taped activities, namely, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 
The dataset, a multivariate, time-series with 10299 rows and 561 features, has been randomly divided into two sets, a training set with 70% of the volunteers and a test set with the remaining 30% of the volunteers. The file features_info.txt provides a detailed description of the features in the raw dataset.

The main goal of the project is to produce a tidy dataset of the 6 activities performed by the 30 volunteers in selected variables, i.e., a merged set of downloaded data that has been transformed to contain only relevant information.

###Deliverables

This repository contains the following documents as specified in the project requirements for the Getting and Cleaning Data course.

1. This introduction, 
2. 	Codebook document, CODEBOOK.md, to describe the different datasets and variables pertinent to the project.  
3.	A readme file, README.md. This document explains the different steps performed by the run_analysis.R script to change the downloaded raw data to meet the requirements of the course project.
4.	R script, run_analysis.R generates two tidy datasets.First, the script will read then merge the test and training sets to produce a single dataset called mergedData.txt. Second, the script will tidy mergedData  by renaming the column variables to improve their readability and filtering out variables which are not necessary to the project.
5. tidyData.txt. The script produces tidyData.txt, a dataset of averages created using write.table() with row.name=FALSE, that will be uploaded to the student GitHub repository. 
   
* *Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*
