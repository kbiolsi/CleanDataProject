<b>Code book for tidydata.txt</b>

A couple of notes before getting into the main code book:

1. Based on the discussion at https://class.coursera.org/getdata-032/forum/thread?thread_id=225 and the response by a Community TA, I have included only those variables in the final tidy data set in this code book.

2. Regarding the variable names for the feature measurements, they already suffer from being a bit long and unwieldy. Because of this, I chose not to expand things like “Acc” into “Accelerometer” or “Gyro” into “Gyroscope”.

<b>Size of data set</b>: 180 rows (+ 1 header row) by 81 columns

<b>Variables in data set</b>

Subject 
Subject number (integer: 1 - 30)

Activity
Activity label (factor: "LAYING" "SITTING" "STANDING"
                   "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS")


Following “Activity”, there are 79 numerical variables representing various accelerometer and gyroscope measurements. The information concerning these variables comes from the “README.txt” and “feature_info.txt” files that accompany the various data files.

All features come from either accelerometer (“Acc”) or gyroscope (“Gyro”) tri-axial (X, Y, Z) signals. Accelerometer signals were separated into body (“Body”) and gravity (“Gravity”) acceleration signals.

Features may represent either the time domain (denoted with a “t” prefix) or Fast Fourier Transforms applied to the signals (denoted with an “f” prefix).

According to the README.txt file accompanying the data, the measurements have all been normalized and are bounded within [-1,1]. Because of this, they have no units.

In pre-processing, only those variables that represent means (“_mean”), standard deviations (“_std”), or mean frequencies (“meanFreq”) were retained.

Final values in data set are means computed across subject and activity type.

Example variables:
- mn_tBodyAcc_X_mean: the mean of the means of the time domain body acceleration signals along the x-axis for the given subject and activity.
- mn_fBodyGyroJerkMag_Z_std: the mean of the standard deviations of the Fast Fourier Transforms of the magnitudes of the gyroscopic body jerk signals across the given subject and activity.

The 79 variables appear in the following order:
mn_tBodyAcc_mean_X
mn_tBodyAcc_mean_Y
mn_tBodyAcc_mean_Z
mn_tBodyAcc_std_X
mn_tBodyAcc_std_Y
mn_tBodyAcc_std_Z
mn_tGravityAcc_mean_X
mn_tGravityAcc_mean_Y
mn_tGravityAcc_mean_Z
mn_tGravityAcc_std_X
mn_tGravityAcc_std_Y
mn_tGravityAcc_std_Z
mn_tBodyAccJerk_mean_X
mn_tBodyAccJerk_mean_Y
mn_tBodyAccJerk_mean_Z
mn_tBodyAccJerk_std_X
mn_tBodyAccJerk_std_Y
mn_tBodyAccJerk_std_Z
mn_tBodyGyro_mean_X
mn_tBodyGyro_mean_Y
mn_tBodyGyro_mean_Z
mn_tBodyGyro_std_X
mn_tBodyGyro_std_Y
mn_tBodyGyro_std_Z
mn_tBodyGyroJerk_mean_X
mn_tBodyGyroJerk_mean_Y
mn_tBodyGyroJerk_mean_Z
mn_tBodyGyroJerk_std_X
mn_tBodyGyroJerk_std_Y
mn_tBodyGyroJerk_std_Z
mn_tBodyAccMag_mean
mn_tBodyAccMag_std
mn_tGravityAccMag_mean
mn_tGravityAccMag_std
mn_tBodyAccJerkMag_mean
mn_tBodyAccJerkMag_std
mn_tBodyGyroMag_mean
mn_tBodyGyroMag_std
mn_tBodyGyroJerkMag_mean
mn_tBodyGyroJerkMag_std
mn_fBodyAcc_mean_X
mn_fBodyAcc_mean_Y
mn_fBodyAcc_mean_Z
mn_fBodyAcc_std_X
mn_fBodyAcc_std_Y
mn_fBodyAcc_std_Z
mn_fBodyAcc_meanFreq_X
mn_fBodyAcc_meanFreq_Y
mn_fBodyAcc_meanFreq_Z
mn_fBodyAccJerk_mean_X
mn_fBodyAccJerk_mean_Y
mn_fBodyAccJerk_mean_Z
mn_fBodyAccJerk_std_X
mn_fBodyAccJerk_std_Y
mn_fBodyAccJerk_std_Z
mn_fBodyAccJerk_meanFreq_X
mn_fBodyAccJerk_meanFreq_Y
mn_fBodyAccJerk_meanFreq_Z
mn_fBodyGyro_mean_X
mn_fBodyGyro_mean_Y
mn_fBodyGyro_mean_Z
mn_fBodyGyro_std_X
mn_fBodyGyro_std_Y
mn_fBodyGyro_std_Z
mn_fBodyGyro_meanFreq_X
mn_fBodyGyro_meanFreq_Y
mn_fBodyGyro_meanFreq_Z
mn_fBodyAccMag_mean
mn_fBodyAccMag_std
mn_fBodyAccMag_meanFreq
mn_fBodyBodyAccJerkMag_mean
mn_fBodyBodyAccJerkMag_std
mn_fBodyBodyAccJerkMag_meanFreq
mn_fBodyBodyGyroMag_mean
mn_fBodyBodyGyroMag_std
mn_fBodyBodyGyroMag_meanFreq
mn_fBodyBodyGyroJerkMag_mean
mn_fBodyBodyGyroJerkMag_std
mn_fBodyBodyGyroJerkMag_meanFreq

