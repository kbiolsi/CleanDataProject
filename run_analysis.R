# File: run_analysis.R

# Combine the information in eight files to create a tidy data set.
# The eight files are as follows:
#   features.txt, activity_labels.txt, 
#   X_train.txt, y_train.txt, subject_train.txt,
#   X_test.txt, y_test.txt, subject_test.txt
#
# Specific purpose of this script:
# 1. Merge the training and test data sets to create one data set.
# 2. Retain only those measurements relating to means and standard deviations.
# 3. Use descriptive activity names (rather than the integers 1-6).
# 4. Label the variables with descriptive names (rather than names such as V1).
# 5. From the data set created by steps 1-4, create a tidy data set that
#    contains the average of each variable across subject ID and activity type.


setwd("C:/RProg/DataCleaning-proj") ### Set your own working directory here ###


# Step 1
# Read in the eight key files.

feature_labels<-read.table("./UCI HAR Dataset/features.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

train_activities<-read.table("./UCI HAR Dataset/train/y_train.txt")
train_features<-read.table("./UCI HAR Dataset/train/X_train.txt")
train_subjects<-read.table("./UCI HAR Dataset/train/subject_train.txt")

test_activities<-read.table("./UCI HAR Dataset/test/y_test.txt")
test_features<-read.table("./UCI HAR Dataset/test/X_test.txt")
test_subjects<-read.table("./UCI HAR Dataset/test/subject_test.txt")


# Step 2
# There are 561 variables in each of the train_features and test_features
#   data frames. Check that the variable names are identical and ordered the 
#   same way in both.

all.equal(train_features[0,],test_features[0,])  # This should result in TRUE


# Step 3
# Create an index of those variables in feature_labels that have 'mean' or 'std' 
#    in their names. I have chosen to keep those features that have 'mean()', 
#    'std', or 'meanFreq' as part of their names. I am ignoring appearances
#    of the string 'Mean' in a number of 'angle' functions. In total, I am 
#    keeping 79 feature variables.

mean_std_index<-grep("mean\\(\\)|std|meanFreq",feature_labels$V2,ignore.case=TRUE)


# Step 4
# Construct a data frame that combines the features for both the training and test
# sets, retaining only those features related to means and standard deviations

all_features<-rbind(train_features,test_features)[,mean_std_index]


# Step 5
# The feature variables are currently named V1 - V561. Use feature_labels 
# to assign more meaningful names. Before doing so, though, remove "()" and
# replace "-" with "_" in the names since these characters may be problematic.

new_feature_labels<-feature_labels
new_feature_labels$V2<-gsub("-","_",gsub("\\(\\)","",feature_labels$V2))
names(all_features)<-new_feature_labels$V2[mean_std_index]


# Step 6
# Combine all subject ID numbers, activity codes, and features for both
# the training and test sets.

all_data<-cbind(rbind(train_activities,test_activities),
                rbind(train_subjects,test_subjects),
                all_features)


# Step 7
# Assign the subject ID number and activity code variables meaningful names.

names(all_data)[1]<-"Activity"
names(all_data)[2]<-"Subject_ID"


# Step 8
# Merge the full data set with the activity_labels file to create a variable
#   with meaningful activity labels.

merged_data<-merge(all_data,activity_labels,by.x="Activity",by.y="V1",sort=FALSE)


# Step 9
# Rearrange the variable order to place subject ID number first, activity type second,
# and then all of the features. 
final_data<-merged_data[c(2,ncol(merged_data),3:(ncol(merged_data)-1))]
names(final_data)[2]="Activity"


# Step 10
# Compute means by subject ID and activity across all feature variables. Sort the
# data by subject ID and activity.
tidy_data<-aggregate(.~Subject_ID+Activity,dat=final_data,mean)
tidy_data<-tidy_data[order(tidy_data$Subject_ID,tidy_data$Activity),]


# Step 11
# Append "mn_" to the beginning of each feature variable name since the values
# in 'tidy_data' are means.

colnames(tidy_data)[3:81]<-paste("mn_",colnames(tidy_data)[3:81],sep="")


# Step 12
# Save to a .txt file.
write.table(tidy_data,file="./tidydata.txt",row.name=FALSE)
