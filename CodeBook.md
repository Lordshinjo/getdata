# Dimensions
## Subject
The unique identifier of the subject, from 1 to 30

## Activity
The name of the activity the subject was doing during the measurements.

The different activities are:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

# Measurements
All measurements are normalized and bounded within [-1, 1], and are thus unitless.

## Gravity Acceleration
The following measures correspond to the acceleration signal of gravity.
- `tGravityAcc-mean()-X`, `tGravityAcc-mean()-Y`, `tGravityAcc-mean()-Z`: The mean in the 3 directions (X, Y, Z).
- `tGravityAcc-std()-X`, `tGravityAcc-std()-Y`, `tGravityAcc-std()-Z`: The standard deviation in the 3 directions (X, Y, Z).
- `tGravityAccMag-mean()`: The mean of the magnitude.
- `tGravityAccMag-std()`: The standard deviation of the magnitude.

## Body Acceleration
The following measures correspond to the acceleration signal of the body.
- `tBodyAcc-mean()-X`, `tBodyAcc-mean()-Y`, `tBodyAcc-mean()-Z`: The mean in the 3 directions (X, Y, Z).
- `tBodyAcc-std()-X`, `tBodyAcc-std()-Y`, `tBodyAcc-std()-Z`: The standard deviation in the 3 directions (X, Y, Z).
- `tBodyAccMag-mean()`: The mean of the magnitude.
- `tBodyAccMag-std()`: The standard deviation of the magnitude.
- `fBodyAcc-mean()-X`, `fBodyAcc-mean()-Y`, `fBodyAcc-mean()-Z`: The mean of the Fast Fourier Transform (FFT), in the 3 directions (X, Y, Z).
- `fBodyAcc-std()-X`, `fBodyAcc-std()-Y`, `fBodyAcc-std()-Z`: The standard deviation of the FFT, in the 3 directions (X, Y, Z).
- `fBodyAccMag-mean()`: The mean of the FFT of the magnitude.
- `fBodyAccMag-std()`: The standard deviation of the FFT of the magnitude.

## Body Acceleration Jerk
The following measures correspond to the time derivative of the acceleration signal of the body.
- `tBodyAccJerk-mean()-X`, `tBodyAccJerk-mean()-Y`, `tBodyAccJerk-mean()-Z`: The mean in the 3 directions (X, Y, Z).
- `tBodyAccJerk-std()-X`, `tBodyAccJerk-std()-Y`, `tBodyAccJerk-std()-Z`: The standard deviation in the 3 directions (X, Y, Z).
- `tBodyAccJerkMag-mean()`: The mean of the magnitude.
- `tBodyAccJerkMag-std()`: The standard deviation of the magnitude.
- `fBodyAccJerk-mean()-X`, `fBodyAccJerk-mean()-Y`, `fBodyAccJerk-mean()-Z`: The mean of the Fast Fourier Transform (FFT), in the 3 directions (X, Y, Z).
- `fBodyAccJerk-std()-X`, `fBodyAccJerk-std()-Y`, `fBodyAccJerk-std()-Z`: The standard deviation of the FFT, in the 3 directions (X, Y, Z).
- `fBodyAccJerkMag-mean()`: The mean of the FFT of the magnitude.
- `fBodyAccJerkMag-std()`: The standard deviation of the FFT of the magnitude.

## Body Angular Velocity
The following measures correspond to the angular velocity signal of the body.
- `tBodyGyro-mean()-X`, `tBodyGyro-mean()-Y`, `tBodyGyro-mean()-Z`: The mean in the 3 directions (X, Y, Z).
- `tBodyGyro-std()-X`, `tBodyGyro-std()-Y`, `tBodyGyro-std()-Z`: The standard deviation in the 3 directions (X, Y, Z).
- `tBodyGyroMag-mean()`: The mean of the magnitude.
- `tBodyGyroMag-std()`: The standard deviation of the magnitude.
- `fBodyGyro-mean()-X`, `fBodyGyro-mean()-Y`, `fBodyGyro-mean()-Z`: The mean of the Fast Fourier Transform (FFT), in the 3 directions (X, Y, Z).
- `fBodyGyro-std()-X`, `fBodyGyro-std()-Y`, `fBodyGyro-std()-Z`: The standard deviation of the FFT, in the 3 directions (X, Y, Z).
- `fBodyGyroMag-mean()`: The mean of the FFT of the magnitude.
- `fBodyGyroMag-std()`: The standard deviation of the FFT of the magnitude.

## Body Angular Velocity Jerk
The following measures correspond to the time derivative of the angular velocity signal of the body.
- `tBodyGyroJerk-mean()-X`, `tBodyGyroJerk-mean()-Y`, `tBodyGyroJerk-mean()-Z`: The mean in the 3 directions (X, Y, Z).
- `tBodyGyroJerk-std()-X`, `tBodyGyroJerk-std()-Y`, `tBodyGyroJerk-std()-Z`: The standard deviation in the 3 directions (X, Y, Z).
- `tBodyGyroJerkMag-mean()`: The mean of the magnitude.
- `tBodyGyroJerkMag-std()`: The standard deviation of the magnitude.
- `fBodyGyroJerkMag-mean()`: The mean of the FFT of the magnitude.
- `fBodyGyroJerkMag-std()`: The standard deviation of the FFT of the magnitude.