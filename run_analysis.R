# File: run_analysis.R

# Combine the information in eight files to create two tidy data sets
# The eight files are as follows and should be placed in a single folder:
#   features.txt, activity_labels.txt, 
#   y_train.txt, X_train.txt, subject_train.txt,
#   y_test.txt, X_test.txt, subject_test.txtx
#
# 1. Merge the training and test data sets to create one data set
# 2. Retain only those measurements relating to means and standard deviations
# 3. Use descriptive activity names to name the activities
# 4. Label the variables with descriptive names
# 5. From the data set created by steps 1-4, create a second tidy data set
#    the average of each variable by activity and subject


# Step 1
# Read in the eight key files.

setwd("C:/RProg/DataCleaning-proj/UCI HAR Dataset")
feature_labels<-read.table("features.txt")
activity_labels<-read.table("activity_labels.txt")


setwd("C:/RProg/DataCleaning-proj/UCI HAR Dataset/train")
train_activities<-read.table("y_train.txt")
train_features<-read.table("X_train.txt")
train_subjects<-read.table("subject_train.txt")


setwd("C:/RProg/DataCleaning-proj/UCI HAR Dataset/test")
test_activities<-read.table("y_test.txt")
test_features<-read.table("X_test.txt")
test_subjects<-read.table("subject_test.txt")


# Step 2
# There are 561 variables in each of the train_features and test_features
#   files. Check that the variable names are identical and ordered the same
#   way in both files.

all.equal(train_features[0,],test_features[0,])  # This should result in TRUE


# Step 3
# Create an index of those variables in feature_labels that have 'mean' or 'std' 
#    in their names. I have chosen to keep those features that have 'mean()', 
#    'std()', or 'meanFreq' as part of their names. I am ignoring appearances
#    of the string 'Mean' in a number of 'angle' functions. In total, I am 
#    keeping 79 feature measurement variables.

mean_std_index<-grep("mean\\(\\)|std|meanFreq",feature_labels$V2,ignore.case=TRUE)


# Step 4
# Construct a data frame that combines the features for both the training and test
# sets, retaining only those features related to means and standard deviations

all_features<-rbind(train_features,test_features)[,mean_std_index]


# Step 5
# The feature variables are currently named V1 - V561. Use the feature_labels file
# to assign more meaningful names. Before doing so, though remove "()" and
# replace "-" with "_" in the names since these characters may be problematic.

new_feature_labels<-feature_labels
new_feature_labels$V2<-gsub("-","_",gsub("\\(\\)","",feature_labels$V2))
names(all_features)<-new_feature_labels$V2[mean_std_index]


# Step 6
# Combine all subject numbers, activity codes, and feature measurements for both
# the training and test sets.

all_data<-cbind(rbind(train_activities,test_activities),
                rbind(train_subjects,test_subjects),
                all_features)


# Step 7
# Assign the subject number and activity code variables meaningful names.

names(all_data)[1]<-"Activity"
names(all_data)[2]<-"Subject"


# Step 8
# Merge the full data set with the activity_labels file to create a variable
#   with meaningful activity labels.

merged_data<-merge(all_data,activity_labels,by.x="Activity",by.y="V1",sort=FALSE)


# Step 9
# Rearrange the variable order to place subject number first, activity type second,
# and then all of the features. 
final_data<-merged_data[c(2,ncol(merged_data),3:(ncol(merged_data)-1))]
names(final_data)[2]="Activity"


# Step 10
# Compute means by subject and activity across all feature variables. Sort the
# data by subject and activity.
tidy_data<-aggregate(.~Subject+Activity,dat=final_data,mean)
tidy_data<-tidy_data[order(tidy_data$Subject,tidy_data$Activity),]


# Step 11
# Save to a .txt file.
write.table(tidy_data,file="tidydata.txt",row.name=FALSE)





