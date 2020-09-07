# Select the libraries that will be used in the code
library(dplyr)
library(tidyverse)
library(reshape2)

# Download the dataset in the unzip the file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile ="data.zip")
unzip("data.zip")
files <- file.path("./data/UCI HAR Dataset")

# Convert txt files to table format
xtrain <- read.table(file.path("./UCI HAR Dataset", "train", "X_train.txt"), header = FALSE) # none of the text files have header, hence we have called them out here
ytrain <- read.table(file.path("./UCI HAR Dataset","train","y_train.txt"), header = FALSE)
subject_train <- read.table(file.path("./UCI HAR Dataset","train","subject_train.txt"), header = FALSE)
xtest <- read.table(file.path("./UCI HAR Dataset", "test", "X_test.txt"), header = FALSE)
ytest <- read.table(file.path("./UCI HAR Dataset","test","y_test.txt"), header = FALSE)
subject_test <- read.table(file.path("./UCI HAR Dataset","test","subject_test.txt"), header = FALSE)
activity_labels <- read.table(file.path("./UCI HAR Dataset","Activity_labels.txt"), header = FALSE)
features <- read.table(file.path("./UCI HAR Dataset","features.txt"), header = FALSE)

# Add the column names to the dataset (this can be done later, however its best to complete the table before going deep in the analysis)
colnames(xtrain) <- features[,2] # based on the readme notes in the zip file
colnames(xtest) <- features[,2]
colnames(ytest) <- "ActivityID"
colnames(ytrain) <- "ActivityID"
colnames(subject_test) <- "SubjectID"
colnames(subject_train) <- "SubjectID"
colnames(activity_labels) <- c("ActivityID","ActivityName")

# Combine all the datasets together
train_set <- cbind(xtrain, ytrain, subject_train) # bind train data
test_set <- cbind(xtest, ytest, subject_test) # bind test data
All_set <- rbind(train_set, test_set) # bind train and test data

# select the columns with mean and std deviation values for the corresponding activity ID and subject ID
match_columns <- (grepl("ActivityID", colnames(All_set))| grepl("SubjectID", colnames(All_set))| grepl("mean",colnames(All_set))| grepl("std", colnames(All_set)))
select_set <- All_set[ ,match_columns==TRUE] # Grepl can be used as a single command as well (e.g ActivityID|sujectID|mean...)

# Add activity labels to the IDs to make them descriptive
select_set$ActivityID[select_set$ActivityID==1] <- "Walking"
select_set$ActivityID[select_set$ActivityID==2] <- "Walking_upstairs"
select_set$ActivityID[select_set$ActivityID==3] <- "Walking_downstairs"
select_set$ActivityID[select_set$ActivityID==4] <- "Sitting"
select_set$ActivityID[select_set$ActivityID==5] <- "Standing"
select_set$ActivityID[select_set$ActivityID==6] <- "Laying"

# Add descriptive column names (easy to understand and avoids confusion)
names(select_set) <- gsub("^f","frequency", names(select_set))
names(select_set) <- gsub("Gyro","Gyroscope", names(select_set))
names(select_set) <- gsub("^t","time", names(select_set))
names(select_set) <- gsub("BodyBody","Body", names(select_set))
names(select_set) <- gsub("Acc","Accelerate", names(select_set))
names(select_set) <- gsub("Mag","Magnitude", names(select_set))

# Melt data into different elements so that we can take out mean of the relevant columns
datamelt <- melt(select_set, id = c("SubjectID", "ActivityID")) # Collapses all columns into manageable 4 columns
tidydataset <- dcast(datamelt, SubjectID + ActivityID ~variable, mean) # get the output in data frame specifically to get the average of each variable for each activity and each subject
write.table(tidydataset,"tidydata.txt", row.names = FALSE) # Write the table in text format
