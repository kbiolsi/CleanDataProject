<b>Code book for tidydata.txt</b>

A couple of notes before getting into the main code book:

1. Based on the discussion at https://class.coursera.org/getdata-032/forum/thread?thread_id=225 and the response by a Community TA, I have included only those variables in the final tidy data set in this code book.

2. Regarding the variable names for the feature measurements, they already suffer from being a bit long and unwieldy. Because of this, I chose not to expand things like “Acc” into “Accelerometer” or “Gyro” into “Gyroscope”.

<b>Size of data set</b>: 180 rows (+ 1 header row) by 81 columns

<b>Variables in data set</b>

Subject 
- Subject identification number (integer: 1 - 30)

Activity
- Activity label (factor: "LAYING" "SITTING" "STANDING"
                   "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS")

<br /><br />
Following “Activity”, there are 79 numerical variables representing various accelerometer and gyroscope measurements. The information concerning these variables comes from the “README.txt” and “feature_info.txt” files that accompany the various raw data files.

All features come from either accelerometer (“Acc”) or gyroscope (“Gyro”) tri-axial (X, Y, Z) signals. Accelerometer signals were separated into body (“Body”) and gravity (“Gravity”) acceleration signals. 

Features may represent either the time domain (denoted with a “t” prefix) or Fast Fourier Transforms applied to the signals (denoted with an “f” prefix).

Jerk (“Jerk”) signals were obtained by deriving body linear acceleration and angular velocity in time, and magnitudes (“Mag”) of three-dimensional signals were computed using a Euclidean norm. 

According to the README.txt file accompanying the data, the measurements have all been normalized and are bounded within [-1,1]. Because of this, they have no units.

In pre-processing, only those variables that represent means (“_mean”), standard deviations (“_std”), or mean frequencies (“meanFreq”) were retained.

Final values in the data set are means computed across subject and activity type.

Example:
- mn_tBodyAcc_X_mean: the mean of the means of the time domain body acceleration signals along the x-axis for the given subject and activity.

<br /><br />
The 79 variables appear in the following order: <br />
mn_tBodyAcc_mean_X<br />
mn_tBodyAcc_mean_Y<br />
mn_tBodyAcc_mean_Z<br />
mn_tBodyAcc_std_X<br />
mn_tBodyAcc_std_Y<br />
mn_tBodyAcc_std_Z<br />
mn_tGravityAcc_mean_X<br />
mn_tGravityAcc_mean_Y<br />
mn_tGravityAcc_mean_Z<br />
mn_tGravityAcc_std_X<br />
mn_tGravityAcc_std_Y<br />
mn_tGravityAcc_std_Z<br />
mn_tBodyAccJerk_mean_X<br />
mn_tBodyAccJerk_mean_Y<br />
mn_tBodyAccJerk_mean_Z<br />
mn_tBodyAccJerk_std_X<br />
mn_tBodyAccJerk_std_Y<br />
mn_tBodyAccJerk_std_Z<br />
mn_tBodyGyro_mean_X<br />
mn_tBodyGyro_mean_Y<br />
mn_tBodyGyro_mean_Z<br />
mn_tBodyGyro_std_X<br />
mn_tBodyGyro_std_Y<br />
mn_tBodyGyro_std_Z<br />
mn_tBodyGyroJerk_mean_X<br />
mn_tBodyGyroJerk_mean_Y<br />
mn_tBodyGyroJerk_mean_Z<br />
mn_tBodyGyroJerk_std_X<br />
mn_tBodyGyroJerk_std_Y<br />
mn_tBodyGyroJerk_std_Z<br />
mn_tBodyAccMag_mean<br />
mn_tBodyAccMag_std<br />
mn_tGravityAccMag_mean<br />
mn_tGravityAccMag_std<br />
mn_tBodyAccJerkMag_mean<br />
mn_tBodyAccJerkMag_std<br />
mn_tBodyGyroMag_mean<br />
mn_tBodyGyroMag_std<br />
mn_tBodyGyroJerkMag_mean<br />
mn_tBodyGyroJerkMag_std<br />
mn_fBodyAcc_mean_X<br />
mn_fBodyAcc_mean_Y<br />
mn_fBodyAcc_mean_Z<br />
mn_fBodyAcc_std_X<br />
mn_fBodyAcc_std_Y<br />
mn_fBodyAcc_std_Z<br />
mn_fBodyAcc_meanFreq_X<br />
mn_fBodyAcc_meanFreq_Y<br />
mn_fBodyAcc_meanFreq_Z<br />
mn_fBodyAccJerk_mean_X<br />
mn_fBodyAccJerk_mean_Y<br />
mn_fBodyAccJerk_mean_Z<br />
mn_fBodyAccJerk_std_X<br />
mn_fBodyAccJerk_std_Y<br />
mn_fBodyAccJerk_std_Z<br />
mn_fBodyAccJerk_meanFreq_X<br />
mn_fBodyAccJerk_meanFreq_Y<br />
mn_fBodyAccJerk_meanFreq_Z<br />
mn_fBodyGyro_mean_X<br />
mn_fBodyGyro_mean_Y<br />
mn_fBodyGyro_mean_Z<br />
mn_fBodyGyro_std_X<br />
mn_fBodyGyro_std_Y<br />
mn_fBodyGyro_std_Z<br />
mn_fBodyGyro_meanFreq_X<br />
mn_fBodyGyro_meanFreq_Y<br />
mn_fBodyGyro_meanFreq_Z<br />
mn_fBodyAccMag_mean<br />
mn_fBodyAccMag_std<br />
mn_fBodyAccMag_meanFreq<br />
mn_fBodyBodyAccJerkMag_mean<br />
mn_fBodyBodyAccJerkMag_std<br />
mn_fBodyBodyAccJerkMag_meanFreq<br />
mn_fBodyBodyGyroMag_mean<br />
mn_fBodyBodyGyroMag_std<br />
mn_fBodyBodyGyroMag_meanFreq<br />
mn_fBodyBodyGyroJerkMag_mean<br />
mn_fBodyBodyGyroJerkMag_std<br />
mn_fBodyBodyGyroJerkMag_meanFreq

