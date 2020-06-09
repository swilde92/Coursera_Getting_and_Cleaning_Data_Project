##########################################################################################
### Download data
##########################################################################################
#setwd("C:/Users/Sarah Lynn/Desktop/Self Study/Coursera DS JH - clean data/Course Project")
wd_loc <- getwd()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              paste(wd_loc,"/project_data.zip",sep="") )

unzip(zipfile="project_data.zip")
activity_labels <- read.delim(paste(wd_loc,"/UCI HAR Dataset/activity_labels.txt",sep=""),header=FALSE)
feature_labels <- read.delim(paste(wd_loc,"/UCI HAR Dataset/features.txt",sep=""),header=FALSE)
train_subject_labels <- read.delim(paste(wd_loc,"/UCI HAR Dataset/train/subject_train.txt",sep=""),header=FALSE)
x_train_data <- read.delim(paste(wd_loc,"/UCI HAR Dataset/train/X_train.txt",sep=""),header=FALSE)
y_train_data <- read.delim(paste(wd_loc,"/UCI HAR Dataset/train/Y_train.txt",sep=""),header=FALSE)
test_subject_labels <- read.delim(paste(wd_loc,"/UCI HAR Dataset/test/subject_test.txt",sep=""),header=FALSE)
x_test_data <- read.delim(paste(wd_loc,"/UCI HAR Dataset/test/X_test.txt",sep=""),header=FALSE)
y_test_data <- read.delim(paste(wd_loc,"/UCI HAR Dataset/test/Y_test.txt",sep=""),header=FALSE)

#-----Note that the rows in the subject labels correspond to the rows in the test and train dataset. 
library(tidyr)
library(dplyr)

##########################################################################################
### STEP 1: Merge the train and test data sets to have one master data set
##########################################################################################
# Assign feature labels
#----split out measurements so they can be paired with labels, and convert to numeric
split_x_train <- separate(x_train_data,"V1",into=c("na",feature_labels$V1),sep=" +")
x_train_data2 <- as.data.frame(lapply(split_x_train,as.numeric)) 
split_x_test <- separate(x_test_data,"V1",into=c("na",feature_labels$V1),sep=" +")
x_test_data2 <- as.data.frame(lapply(split_x_test,as.numeric)) 

# Assign subject labels
x_train_data3 <- cbind(train_subject_labels,x_train_data2[,2:dim(x_train_data2)[2]])
colnames(x_train_data3)[1] <- "SubjectID"
x_test_data3 <- cbind(test_subject_labels,x_test_data2[,2:dim(x_test_data2)[2]])
colnames(x_test_data3)[1] <- "SubjectID"

# Assign activity labels
x_train_data4 <- cbind(y_train_data,x_train_data3)
colnames(x_train_data4)[1] <- "ActivityID"
x_test_data4 <- cbind(y_test_data,x_test_data3)
colnames(x_test_data4)[1] <- "ActivityID"

# Merge the test and train set together
master_data <- rbind(x_train_data4,x_test_data4)

##########################################################################################
### STEP 2: Extract only the measurements on the mean and standard devation for each measurement
##########################################################################################
# Find columns that deal with means and stds
cols_of_interest <- grepl("(.*mean\\..*)|(.*std\\..*)" ,colnames(master_data))

# Preserve the subject and activity labels
cols_of_interest[1] <- TRUE
cols_of_interest[2] <- TRUE

# Subset the master data to the data of interest
master_data_interest <- master_data[,cols_of_interest]

##########################################################################################
### STEP 3: Use descriptive names to name the activies in the data set
##########################################################################################
# Decode activity labels using activity_labels data frame
split_activity_labels <- separate(activity_labels,"V1",into=c("ID","Activity"),sep=" ")
master_data_labeled0 <- merge(split_activity_labels,master_data_interest, by.x="ID"
                              ,by.y="ActivityID",all.x=TRUE)
master_data_labeled1 <- rename(master_data_labeled0,ActivityID=ID)

# Remove column ActivityID since it's information is duplicated with column Activity
master_data_labeled <- select(master_data_labeled1,-ActivityID)
##########################################################################################
### STEP 4: Appropriately label the data set with descrtive variable names
##########################################################################################
# This was done already in step 1. Here we will clean up names by removing numbers and "..."s.
data_col_names <- colnames(master_data_labeled)
new_col_names1 <- gsub("^X[0-9]+\\.",replacement="",data_col_names)
new_col_names2 <- gsub("\\.{2,3}",replacement="",new_col_names1)
colnames(master_data_labeled) <- new_col_names2


##########################################################################################
### STEP 5: Create a second, independent tidy data set with the average of each variable for  
### each activity and each subject
##########################################################################################
# Create data set that finds the average of each variable by groups
tidy_data_avg_var <- 
master_data_labeled %>%
  group_by(Activity,SubjectID) %>%
  summarize_all(funs(mean))
# Assign names that indicate the data is now averages
colnames(tidy_data_avg_var)[3:length(tidy_data_avg_var)] <- paste0("AVG.",colnames(tidy_data_avg_var[3:length(tidy_data_avg_var)]))
# Tidy data set with the average of each variable for each activity and each subject
write.table(tidy_data_avg_var,file="tidy_data_avg_var.txt",row.name=FALSE)
