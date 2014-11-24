CodeBook.md
=================

This describes the data and variables for Samsung UCI HAR Dataset after going through a series of steps of analysis to have only the averages of mean and standard deviation variables for each subject and each activity.

subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

activity: It can be one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

[3] "tBodyAcc-mean-X"           "tBodyAcc-mean-Y"          
 [5] "tBodyAcc-mean-Z"           "tBodyAcc-std-X"           
 [7] "tBodyAcc-std-Y"            "tBodyAcc-std-Z"           
 [9] "tGravityAcc-mean-X"        "tGravityAcc-mean-Y"       
[11] "tGravityAcc-mean-Z"        "tGravityAcc-std-X"        
[13] "tGravityAcc-std-Y"         "tGravityAcc-std-Z"        
[15] "tBodyAccJerk-mean-X"       "tBodyAccJerk-mean-Y"      
[17] "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"       
[19] "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z"       
[21] "tBodyGyro-mean-X"          "tBodyGyro-mean-Y"         
[23] "tBodyGyro-mean-Z"          "tBodyGyro-std-X"          
[25] "tBodyGyro-std-Y"           "tBodyGyro-std-Z"          
[27] "tBodyGyroJerk-mean-X"      "tBodyGyroJerk-mean-Y"     
[29] "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"      
[31] "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"      
[33] "tBodyAccMag-mean"          "tBodyAccMag-std"          
[35] "tGravityAccMag-mean"       "tGravityAccMag-std"       
[37] "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"      
[39] "tBodyGyroMag-mean"         "tBodyGyroMag-std"         
[41] "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"     
[43] "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"          
[45] "fBodyAcc-mean-Z"           "fBodyAcc-std-X"           
[47] "fBodyAcc-std-Y"            "fBodyAcc-std-Z"           
[49] "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"      
[51] "fBodyAccJerk-mean-Z"       "fBodyAccJerk-std-X"       
[53] "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"       
[55] "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"         
[57] "fBodyGyro-mean-Z"          "fBodyGyro-std-X"          
[59] "fBodyGyro-std-Y"           "fBodyGyro-std-Z"          
[61] "fBodyAccMag-mean"          "fBodyAccMag-std"          
[63] "fBodyBodyAccJerkMag-mean"  "fBodyBodyAccJerkMag-std"  
[65] "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"     
[67] "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std"

Means and Standard Deviations of the below features were considered and provided as above 66 variables and their averages calculated by each subject and activity and the final data is output as run_analysis.txt.

Following info is provided from the original Samsung data description of features.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals and then averaged are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
