## Read data file from web and unzip
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/UCI-HAR-Dataset.zip",method="curl")
unzip("./data/UCI-HAR-Dataset.zip")

# 1. Merge the training and the test sets to create one data set.
# Read UCI HAR X data files and combine them
X_trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_Data <- rbind(X_trainData,X_testData)

# Read UCI HAR subject data files and combine them
subject_trainData <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_testData <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_Data <- rbind(subject_trainData,subject_testData)

# Read UCI HAR y data files and combine them
y_trainData <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_testData <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_Data <- rbind(y_trainData,y_testData)

# Now combine the X data, Subject data and y data to create one data set
Data <- cbind(X_Data,subject_Data,y_Data)

# 2. Extract only the measurements on the mean and standard deviation
# for each measurement. 

# Read features file
features <- read.table("./UCI HAR Dataset/features.txt")
grep("std\\(\\)|mean\\(\\)",features$V2)

# get only those features matching mean() or std()
features_mean_std <- grep("std\\(\\)|mean\\(\\)",features$V2)

# Extract Data only for those features and subject and activity
msData <- Data[c(features_mean_std,562,563)]

## 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
msData$activity <- factor(msData$activity, labels = activity_labels$V2) 

## 4. Appropriately labels the data set with descriptive variable names. 
 names_for_data <- c(gsub("\\()","",features[features_mean_std,]$V2),
                     "subject",
                     "activity")
 names(msData) <- names_for_data

## 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.

library(reshape2)
meltData <- melt(msData, id.vars = c("subject", "activity")) 
final <- dcast(meltData, subject + activity ~ variable, fun = mean)

## write a txt file for final data
write.table(final,file="run_analysis.txt",row.names=FALSE)
