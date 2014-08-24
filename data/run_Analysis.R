# run_analysis.R completes the project in the following steps:
# 1.  Data reading,
# 2.	Merging of the training and test sets to produce a unified dataset,
# 3.	Filtering out of all measurements from the merged dataset with the exception of columns with mean and standard deviation values, 
# 4.	Renaming columns in the merged dataset to make them easily identifiable, 
# 5.	Output of an independent tidy dataset of averages for each subject grouped by activity. This dataset will be uploaded to the student Github repository.
#---------------------------------------------------------------

# Set the working directory
setwd("C:/specdata/Assignments/Data_Cleaning_Project/")

# Read the different datasets from the downloaded and uncompressed files 
          #! Data for the training dataset composed of 70% of participants
training <- read.csv("data/train/X_train.txt", sep="", header=FALSE)
training[,562] <- read.csv("data/train/Y_train.txt", sep="", header=FALSE)
training[,563] <- read.csv("data/train/subject_train.txt", sep="", header=FALSE)

          # Data for the test dataset composed of 30% of participants
testing <- read.csv("data/test/X_test.txt", sep="", header=FALSE)
testing[,562] <- read.csv("data/test/Y_test.txt", sep="", header=FALSE)
testing[,563] <- read.csv("data/test/subject_test.txt", sep="", header=FALSE)
activityLabels <- read.csv("data/activity_labels.txt", sep="", header=FALSE)

          # Read the features dataset
features <- read.csv("data/features.txt", sep="", header=FALSE)

# Simplify 2nd column names in the feature dataset and make data more tidy.
# Capitalize first letters in mean and std and filer out () and -
features[,2] <- gsub('mean', 'Mean', features[,2])
features[,2] <- gsub('std', 'Std', features[,2])
features[,2] <- gsub('[()]', '', features[,2])
features[,2] <- gsub("-", "", features[,2])

# Merge training and test datasets into a single dataset, "mergedData".
mergedData = rbind(training, testing)
names(mergedData) <- gsub("mean", "Mean", names(mergedData)) # capitalize M

# Select only columns of data with mean and standard deviation values.
dataMeanStd <- grep(".*Mean.*|.*Std.*", features[,2])
features <- features[dataMeanStd,]

# Filter out unwanted columns from mergedData
mergedData <- mergedData[,c(dataMeanStd, 562, 563)]

# Add column names "activity" and "subject" to mergedData
colnames(mergedData) <- c(features$V2, "Activity", "Subject")
colnames(mergedData) <- tolower(colnames(mergedData))
activity = 1
for (activityLabel in activityLabels$V2) {
  mergedData$activity <- gsub(activity, activityLabel, mergedData$activity)
  activity <- activity + 1
}
mergedData$activity <- as.factor(mergedData$activity)
mergedData$subject <- as.factor(mergedData$subject)
tidyData = aggregate(mergedData, by=list(activity = mergedData$activity, 
                                    subject=mergedData$subject), FUN=mean)

# Final Cleanup! Filter out non-numeric columns, i.e., keep only columns with mean 
# and standard deviation values ('subject' and 'activity' columns are, thus, eliminated)
tidyData[,-c(89,90)]

# tidyData.txt is the uploadable dataset produced by the run_analysis.R script.
write.table(tidyData, "data/tidyData.txt", row.names = FALSE, sep="\t")
tidyData <- read.table("data/tidyData.txt")
tidyData[1:30,1:3]