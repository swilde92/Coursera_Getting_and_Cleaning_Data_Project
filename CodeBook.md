CodeBook

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------
--------------------Info about the script and output--------------------
------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------



------------------------------------------------------------------------
The transformations performed on the raw data using the .R script:
------------------------------------------------------------------------
This script takes in data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

------------------------------------------------------------------------
The data output:
------------------------------------------------------------------------
The output is therefore two datasets: 1) a master dataset with labels that contains the variables related to means and standard deviations, and 2) a summarized dataset that contains the averages of all the readings for each subject and activity combination.

Features for output 1), the master dataset:
 [1] "Activity"                  "SubjectID"                 "tBodyAcc.meanX"            "tBodyAcc.meanY"           
 [5] "tBodyAcc.meanZ"            "tBodyAcc.stdX"             "tBodyAcc.stdY"             "tBodyAcc.stdZ"            
 [9] "tGravityAcc.meanX"         "tGravityAcc.meanY"         "tGravityAcc.meanZ"         "tGravityAcc.stdX"         
[13] "tGravityAcc.stdY"          "tGravityAcc.stdZ"          "tBodyAccJerk.meanX"        "tBodyAccJerk.meanY"       
[17] "tBodyAccJerk.meanZ"        "tBodyAccJerk.stdX"         "tBodyAccJerk.stdY"         "tBodyAccJerk.stdZ"        
[21] "tBodyGyro.meanX"           "tBodyGyro.meanY"           "tBodyGyro.meanZ"           "tBodyGyro.stdX"           
[25] "tBodyGyro.stdY"            "tBodyGyro.stdZ"            "tBodyGyroJerk.meanX"       "tBodyGyroJerk.meanY"      
[29] "tBodyGyroJerk.meanZ"       "tBodyGyroJerk.stdX"        "tBodyGyroJerk.stdY"        "tBodyGyroJerk.stdZ"       
[33] "tBodyAccMag.mean"          "tBodyAccMag.std"           "tGravityAccMag.mean"       "tGravityAccMag.std"       
[37] "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"       "tBodyGyroMag.mean"         "tBodyGyroMag.std"         
[41] "tBodyGyroJerkMag.mean"     "tBodyGyroJerkMag.std"      "fBodyAcc.meanX"            "fBodyAcc.meanY"           
[45] "fBodyAcc.meanZ"            "fBodyAcc.stdX"             "fBodyAcc.stdY"             "fBodyAcc.stdZ"            
[49] "fBodyAccJerk.meanX"        "fBodyAccJerk.meanY"        "fBodyAccJerk.meanZ"        "fBodyAccJerk.stdX"        
[53] "fBodyAccJerk.stdY"         "fBodyAccJerk.stdZ"         "fBodyGyro.meanX"           "fBodyGyro.meanY"          
[57] "fBodyGyro.meanZ"           "fBodyGyro.stdX"            "fBodyGyro.stdY"            "fBodyGyro.stdZ"           
[61] "fBodyAccMag.mean"          "fBodyAccMag.std"           "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"  
[65] "fBodyBodyGyroMag.mean"     "fBodyBodyGyroMag.std"      "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std"  

Features for output 2), the summarized dataset:
 [1] "Activity"                      "SubjectID"                     "AVG.tBodyAcc.meanX"           
 [4] "AVG.tBodyAcc.meanY"            "AVG.tBodyAcc.meanZ"            "AVG.tBodyAcc.stdX"            
 [7] "AVG.tBodyAcc.stdY"             "AVG.tBodyAcc.stdZ"             "AVG.tGravityAcc.meanX"        
[10] "AVG.tGravityAcc.meanY"         "AVG.tGravityAcc.meanZ"         "AVG.tGravityAcc.stdX"         
[13] "AVG.tGravityAcc.stdY"          "AVG.tGravityAcc.stdZ"          "AVG.tBodyAccJerk.meanX"       
[16] "AVG.tBodyAccJerk.meanY"        "AVG.tBodyAccJerk.meanZ"        "AVG.tBodyAccJerk.stdX"        
[19] "AVG.tBodyAccJerk.stdY"         "AVG.tBodyAccJerk.stdZ"         "AVG.tBodyGyro.meanX"          
[22] "AVG.tBodyGyro.meanY"           "AVG.tBodyGyro.meanZ"           "AVG.tBodyGyro.stdX"           
[25] "AVG.tBodyGyro.stdY"            "AVG.tBodyGyro.stdZ"            "AVG.tBodyGyroJerk.meanX"      
[28] "AVG.tBodyGyroJerk.meanY"       "AVG.tBodyGyroJerk.meanZ"       "AVG.tBodyGyroJerk.stdX"       
[31] "AVG.tBodyGyroJerk.stdY"        "AVG.tBodyGyroJerk.stdZ"        "AVG.tBodyAccMag.mean"         
[34] "AVG.tBodyAccMag.std"           "AVG.tGravityAccMag.mean"       "AVG.tGravityAccMag.std"       
[37] "AVG.tBodyAccJerkMag.mean"      "AVG.tBodyAccJerkMag.std"       "AVG.tBodyGyroMag.mean"        
[40] "AVG.tBodyGyroMag.std"          "AVG.tBodyGyroJerkMag.mean"     "AVG.tBodyGyroJerkMag.std"     
[43] "AVG.fBodyAcc.meanX"            "AVG.fBodyAcc.meanY"            "AVG.fBodyAcc.meanZ"           
[46] "AVG.fBodyAcc.stdX"             "AVG.fBodyAcc.stdY"             "AVG.fBodyAcc.stdZ"            
[49] "AVG.fBodyAccJerk.meanX"        "AVG.fBodyAccJerk.meanY"        "AVG.fBodyAccJerk.meanZ"       
[52] "AVG.fBodyAccJerk.stdX"         "AVG.fBodyAccJerk.stdY"         "AVG.fBodyAccJerk.stdZ"        
[55] "AVG.fBodyGyro.meanX"           "AVG.fBodyGyro.meanY"           "AVG.fBodyGyro.meanZ"          
[58] "AVG.fBodyGyro.stdX"            "AVG.fBodyGyro.stdY"            "AVG.fBodyGyro.stdZ"           
[61] "AVG.fBodyAccMag.mean"          "AVG.fBodyAccMag.std"           "AVG.fBodyBodyAccJerkMag.mean" 
[64] "AVG.fBodyBodyAccJerkMag.std"   "AVG.fBodyBodyGyroMag.mean"     "AVG.fBodyBodyGyroMag.std"     
[67] "AVG.fBodyBodyGyroJerkMag.mean" "AVG.fBodyBodyGyroJerkMag.std" 


------------------------------------------------------------------------
The variables or features:
------------------------------------------------------------------------


Activity labels used to assign descriptive labels to raw data downloaded:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


Features of interest, subsetted from the raw data downloaded:

 [1] "Activity"                  "SubjectID"                 "tBodyAcc.meanX"            "tBodyAcc.meanY"           
 [5] "tBodyAcc.meanZ"            "tBodyAcc.stdX"             "tBodyAcc.stdY"             "tBodyAcc.stdZ"            
 [9] "tGravityAcc.meanX"         "tGravityAcc.meanY"         "tGravityAcc.meanZ"         "tGravityAcc.stdX"         
[13] "tGravityAcc.stdY"          "tGravityAcc.stdZ"          "tBodyAccJerk.meanX"        "tBodyAccJerk.meanY"       
[17] "tBodyAccJerk.meanZ"        "tBodyAccJerk.stdX"         "tBodyAccJerk.stdY"         "tBodyAccJerk.stdZ"        
[21] "tBodyGyro.meanX"           "tBodyGyro.meanY"           "tBodyGyro.meanZ"           "tBodyGyro.stdX"           
[25] "tBodyGyro.stdY"            "tBodyGyro.stdZ"            "tBodyGyroJerk.meanX"       "tBodyGyroJerk.meanY"      
[29] "tBodyGyroJerk.meanZ"       "tBodyGyroJerk.stdX"        "tBodyGyroJerk.stdY"        "tBodyGyroJerk.stdZ"       
[33] "tBodyAccMag.mean"          "tBodyAccMag.std"           "tGravityAccMag.mean"       "tGravityAccMag.std"       
[37] "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"       "tBodyGyroMag.mean"         "tBodyGyroMag.std"         
[41] "tBodyGyroJerkMag.mean"     "tBodyGyroJerkMag.std"      "fBodyAcc.meanX"            "fBodyAcc.meanY"           
[45] "fBodyAcc.meanZ"            "fBodyAcc.stdX"             "fBodyAcc.stdY"             "fBodyAcc.stdZ"            
[49] "fBodyAccJerk.meanX"        "fBodyAccJerk.meanY"        "fBodyAccJerk.meanZ"        "fBodyAccJerk.stdX"        
[53] "fBodyAccJerk.stdY"         "fBodyAccJerk.stdZ"         "fBodyGyro.meanX"           "fBodyGyro.meanY"          
[57] "fBodyGyro.meanZ"           "fBodyGyro.stdX"            "fBodyGyro.stdY"            "fBodyGyro.stdZ"           
[61] "fBodyAccMag.mean"          "fBodyAccMag.std"           "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"  
[65] "fBodyBodyGyroMag.mean"     "fBodyBodyGyroMag.std"      "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std"  


The following information about the features in this dataset pertains to the raw downloaded data. The processed dataset only references the features that relate to mean or standard deviation measurements (as noted above in the "Features of interest" section).

Feature Selection 
=================

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean