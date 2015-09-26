This README.md file describes the actions of the R script run_analysis.R.

The purpose of the script is to do the following:
-  Merge the training and test data sets to create one data set
- Retain only those measurements relating to means and standard deviations
- Use descriptive activity names to name the activities
- Label the variables with descriptive names
- From the data set created by steps 1-4, create a second tidy data set the average of each variable by activity and subject

The script merges the data from eight different files from the Human Activity Recognition Using Smartphones Data Set.
(see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The data set represents 561 measurements on six different activities for each of 30 subjects. Subjects were divided into a training set and a test set.

Full data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

By unzipping the zip file in your working directory, the eight key files can be found in the following locations:

UCI HAR Dataset/train/X_train.txt
UCI HAR Dataset/train/y_train.txt
UCI HAR Dataset/train/subject_train.txt
UCI HAR Dataset/test/X_test.txt
UCI HAR Dataset/test/y_test.txt
UCI HAR Dataset/test/subject_test.txt
UCI HAR Dataset/features.txt
UCI HAR Dataset/activity_labels.txt

The content of these files is as follows:
X_train.txt – Measurement values on 561 variables for the [] rows in the training set 
X_test.txt – Measurements values on 561 variables for the [] rows in the test set 
y_train.txt – The activity codes corresponding to the []rows in X_train.txt.
y_test.txt – The activity codes corresponding to the [] rows in X_test.txt. 
subject_train.txt – The subject numbers corresponding to the [] rows in X_train.txt. 
subject_test.txt – The subjects numbers corresponding to the []rows in X_test.txt. 
features.txt – The labels for the 561 feature measurement variables. 
activity_labels.txt – The labels for the six activity codes. 


The steps used to create the final tidy data file are outlined below. These same step numbers are included as comments in the script file.

Step 1: Read in the eight key files and assign the data to the following data frame objects:
	feature_labels (contents of ‘features.txt’)
	activity_lables (contents of ‘activity_labels.txt’)
	train_features (contents of ‘X_train.txt’)
	train_activities (contents of ‘y_train.txt’)
	train_subjects (contents of ‘subject_train.txt’)
	test_features (contents of ‘X_train.txt’)
	test_activities (contents of ‘y_train.txt’)
	test_subjects (contents of ‘subject_train.txt’)
	
Step 2: Because there are 561 variables in each of the X_train.txt and X_test.txt files, check that the variable labels are identical and in the same order for the two files. 

Step 3: Create an index object (‘mean_std_index’) that identifies the measurement variables that are related to means or standard deviations. This is done by using grep to search for “mean” or “std” or “meanFreq”. There are a number of other variables that include the string “Mean”, but these appear to be functions that make use of a mean-related variable, rather than being means themselves. For this reason, I chose not to include them in the final variable set.

Step 4: Combine the training and test measurement data sets, keeping only the variables indexed in Step 3. Store the result in ‘all-features’.

Step 5: The 561 variables in the measurement data sets have the very non-useful names of V1-V561. Assign the variable names stored in ‘features.txt’ to the measurement variable names.  Again, use the index created in Step 3 to select out only the key [79] variables. In addition, remove all occurrences of “()” in the labels and change “-” to “_” in order to remove characters that may be problematic for certain R commands for other software.

Step 6: Combine all the subject numbers, activity codes, and feature measurements for both the training and test sets. Store the combined data in ‘all_data’.

Step 7: Give the subject numbers and activity codes the more meaningful labels of ‘Subject’ and ‘Activity’.

Step 8: Merge the full data set (‘all_data’) with the activity labels to create a variable with meaningful activity labels rather than just the integers 1 through 6. Save the results in ‘merged_data’.

Step 9: Arrange the variable order to have subject first, activity second, and then the [79] feature measurement variables following activity.

Step 10: Compute the means by subject and activity for all [79] feature measurements and save the results in ‘tidy_data’. Sort this file first by subject and then by activity.

Step 11: Save the tidy data to the file ‘tidydata.txt’.


