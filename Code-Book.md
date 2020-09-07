Tidy data set description
The variables in the tidy data
Tidy data contains 180 rows and 81 columns. Each row has averaged variables for each subject and each activity.

Only all the variables estimated from mean and standard deviation in the tidy set were kept.
mean(): Mean value
std(): Standard deviation

The data were averaged based on subject and activity group.
Subject column is numbered sequentially from 1 to 30 (for each volunteer). Activity column has 6 types as listed below.

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The tidy data contains 6 rows (averaged based on activity) and 81 columns (79 variables and activity labels).
"SubjectID"
"ActivityID"
"timeBodyAccelerate-mean()-X"
"timeBodyAccelerate-mean()-Y"
"timeBodyAccelerate-mean()-Z"
"timeBodyAccelerate-std()-X"
"timeBodyAccelerate-std()-Y"
"timeBodyAccelerate-std()-Z"
"timeGravityAccelerate-mean()-X"
"timeGravityAccelerate-mean()-Y"
"timeGravityAccelerate-mean()-Z"
"timeGravityAccelerate-std()-X"
"timeGravityAccelerate-std()-Y"
"timeGravityAccelerate-std()-Z"
"timeBodyAccelerateJerk-mean()-X"
"timeBodyAccelerateJerk-mean()-Y"
"timeBodyAccelerateJerk-mean()-Z"
"timeBodyAccelerateJerk-std()-X"
"timeBodyAccelerateJerk-std()-Y"
"timeBodyAccelerateJerk-std()-Z"
"timeBodyGyroscope-mean()-X"
"timeBodyGyroscope-mean()-Y"
"timeBodyGyroscope-mean()-Z"
"timeBodyGyroscope-std()-X"
"timeBodyGyroscope-std()-Y"
"timeBodyGyroscope-std()-Z"
"timeBodyGyroscopeJerk-mean()-X"
"timeBodyGyroscopeJerk-mean()-Y"
"timeBodyGyroscopeJerk-mean()-Z"
"timeBodyGyroscopeJerk-std()-X"
"timeBodyGyroscopeJerk-std()-Y"
"timeBodyGyroscopeJerk-std()-Z"
"timeBodyAccelerateMagnitude-mean()"
"timeBodyAccelerateMagnitude-std()"
"timeGravityAccelerateMagnitude-mean()"
"timeGravityAccelerateMagnitude-std()"
"timeBodyAccelerateJerkMagnitude-mean()"
"timeBodyAccelerateJerkMagnitude-std()"
"timeBodyGyroscopeMagnitude-mean()"
"timeBodyGyroscopeMagnitude-std()"
"timeBodyGyroscopeJerkMagnitude-mean()"
"timeBodyGyroscopeJerkMagnitude-std()"
"frequencyBodyAccelerate-mean()-X"
"frequencyBodyAccelerate-mean()-Y"
"frequencyBodyAccelerate-mean()-Z"
"frequencyBodyAccelerate-std()-X"
"frequencyBodyAccelerate-std()-Y"
"frequencyBodyAccelerate-std()-Z"
"frequencyBodyAccelerate-meanFreq()-X"
"frequencyBodyAccelerate-meanFreq()-Y"
"frequencyBodyAccelerate-meanFreq()-Z"
"frequencyBodyAccelerateJerk-mean()-X"
"frequencyBodyAccelerateJerk-mean()-Y"
"frequencyBodyAccelerateJerk-mean()-Z"
"frequencyBodyAccelerateJerk-std()-X"
"frequencyBodyAccelerateJerk-std()-Y"
"frequencyBodyAccelerateJerk-std()-Z"
"frequencyBodyAccelerateJerk-meanFreq()-X"
"frequencyBodyAccelerateJerk-meanFreq()-Y"
"frequencyBodyAccelerateJerk-meanFreq()-Z"
"frequencyBodyGyroscope-mean()-X"
"frequencyBodyGyroscope-mean()-Y"
"frequencyBodyGyroscope-mean()-Z"
"frequencyBodyGyroscope-std()-X"
"frequencyBodyGyroscope-std()-Y"
"frequencyBodyGyroscope-std()-Z"
"frequencyBodyGyroscope-meanFreq()-X"
"frequencyBodyGyroscope-meanFreq()-Y"
"frequencyBodyGyroscope-meanFreq()-Z"
"frequencyBodyAccelerateMagnitude-mean()"
"frequencyBodyAccelerateMagnitude-std()"
"frequencyBodyAccelerateMagnitude-meanFreq()"
"frequencyBodyAccelerateJerkMagnitude-mean()"
"frequencyBodyAccelerateJerkMagnitude-std()"
"frequencyBodyAccelerateJerkMagnitude-meanFreq()"
"frequencyBodyGyroscopeMagnitude-mean()"
"frequencyBodyGyroscopeMagnitude-std()"
"frequencyBodyGyroscopeMagnitude-meanFreq()"
"frequencyBodyGyroscopeJerkMagnitude-mean()"
"frequencyBodyGyroscopeJerkMagnitude-std()"
"frequencyBodyGyroscopeJerkMagnitude-meanFreq()"

Variable units
SubjectID is an integer type. ActivityID variable is character type. All the other variables are numeric type.
