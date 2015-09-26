<b>Code book for tidydata.txt</b>

A couple of notes before getting into the main code book:

1. Based on the discussion at https://class.coursera.org/getdata-032/forum/thread?thread_id=225 and the response by a Community TA, I have included only those variables in the tidy data set in this code book.

2. Regarding the variable names for the feature measurements, they are already verging on being a bit long and unwieldy. Because of this, I chose not to expand things like 'Acc' into 'Accelerometer'.

<b>Variables in tidydata.txt</b>

Subject 
   Subject number (integer: 1 - 30)

Activity
   Activity label (factor: "LAYING" "SITTING" "STANDING"
                   "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS")


The 79 variables listed below are all numerical. Each value in the data set represents the <b>mean</b> of the given measurement type across subject and activity type. For example, a  value of tBodyAcc_mean_x  for a given subject and activity is the mean across the tBodyAcc_mean_x measurement…
[] for every record corresponding to subject 13 performing the "LAYING"
activity. That is, the value is a mean of means.  Similarly, the value for tBodyAcc_std_X is a mean of standard deviations.

According to the README.txt file accompanying the data, the features have all been normalized and are bounded within [-1,1]. Because of this, they have not units.

   tBodyAcc_mean_X, tBodyAcc_mean_Y,tBodyAcc_mean_Z      	
   tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z		

   tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z		
   tGravityAcc_std_X, tGravityAcc_std_Y, tGravityAcc_std_Z		

   tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z		
   tBodyAccJerk_std_X	, tBodyAccJerk_std_Y, tBodyAccJerk_std_Z		

   tBodyGyro_mean_X, tBodyGyro_mean_Y, tBodyGyro_mean_Z
   tBodyGyro_std_X, tBodyGyro_std_Y, tBodyGyro_std_Z

   tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z	
   tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z	
   tBodyAccMag_mean, tBodyAccMag_std
		
   tGravityAccMag_mean, tGravityAccMag_std	

   tBodyAccJerkMag_mean, tBodyAccJerkMag_std	

   tBodyGyroMag_mean, tBodyGyroMag_std

   tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std

   fBodyAcc_mean_X, fBodyAcc_mean_Y, fBodyAcc_mean_Z
   fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z

   fBodyAcc_meanFreq_X, fBodyAcc_meanFreq_Y, fBodyAcc_meanFreq_Z
   fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, fBodyAccJerk_mean_Z

   fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z

   fBodyAccJerk_meanFreq_X, fBodyAccJerk_meanFreq_Y, fBodyAccJerk_meanFreq_Z

   fBodyGyro_mean_X, fBodyGyro_mean_Y, fBodyGyro_mean_Z
   fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z

   fBodyGyro_meanFreq_X, fBodyGyro_meanFreq_Y, fBodyGyro_meanFreq_Z

   fBodyAccMag_mean, fBodyAccMag_std

   fBodyAccMag_meanFreq

   fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std

   fBodyBodyAccJerkMag_meanFreq

   fBodyBodyGyroMag_mean, fBodyBodyGyroMag_std

   fBodyBodyGyroMag_meanFreq

   fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std

   fBodyBodyGyroJerkMag_meanFreq:



