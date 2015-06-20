## CODE BOOK (Describes each variable and its units)

The data_with_means data have the folowing columns. The "Subject" and "Activity" identify the other columns.

COLUMNS NAMES:
tBodyAcc-Mean-X

tBodyAcc-Mean-Y

tBodyAcc-Mean-Z

tGravityAcc-Mean-X

tGravityAcc-Mean-Y

tGravityAcc-Mean-Z

tBodyAccJerk-Mean-X

tBodyAccJerk-Mean-Y

tBodyAccJerk-Mean-Z

tBodyGyro-Mean-X

tBodyGyro-Mean-Y

tBodyGyro-Mean-Z

tBodyGyroJerk-Mean-X

tBodyGyroJerk-Mean-Y

tBodyGyroJerk-Mean-Z

tBodyAccMag-Mean

tGravityAccMag-Mean

tBodyAccJerkMag-Mean

tBodyGyroMag-Mean

tBodyGyroJerkMag-Mean

fBodyAcc-Mean-X

fBodyAcc-Mean-Y

fBodyAcc-Mean-Z

fBodyAccJerk-Mean-X

fBodyAccJerk-Mean-Y

fBodyAccJerk-Mean-Z

fBodyGyro-Mean-X

fBodyGyro-Mean-Y

fBodyGyro-Mean-Z

fBodyAccMag-Mean

fBodyBodyAccJerkMag-Mean

fBodyBodyGyroMag-Mean

fBodyBodyGyroJerkMag-Mean

tBodyAcc-Std-X

tBodyAcc-Std-Y

tBodyAcc-Std-Z

tGravityAcc-Std-X

tGravityAcc-Std-Y

tGravityAcc-Std-Z

tBodyAccJerk-Std-X

tBodyAccJerk-Std-Y

tBodyAccJerk-Std-Z

tBodyGyro-Std-X

tBodyGyro-Std-Y

tBodyGyro-Std-Z

tBodyGyroJerk-Std-X

tBodyGyroJerk-Std-Y

tBodyGyroJerk-Std-Z

tBodyAccMag-Std

tGravityAccMag-Std

tBodyAccJerkMag-Std

tBodyGyroMag-Std

tBodyGyroJerkMag-Std

fBodyAcc-Std-X

fBodyAcc-Std-Y

fBodyAcc-Std-Z

fBodyAccJerk-Std-X

fBodyAccJerk-Std-Y

fBodyAccJerk-Std-Z

fBodyGyro-Std-X

fBodyGyro-Std-Y

fBodyGyro-Std-Z

fBodyAccMag-Std

fBodyBodyAccJerkMag-Std

fBodyBodyGyroMag-Std

fBodyBodyGyroJerkMag-Std

Subject

ActivityID

Activity


## STUDY DESIGN (Description of how the dat was colected)

The data was colected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

After that, the folowing was done to obtain the data_with_means file:

1. Training and the test sets are merged to create one data set.
2. The measurements on the mean and standard deviation were extracted for each measurement. 
3. Activities in the data set were named.
4. Descriptive variable names were named. 
5. An independent tidy data set with the average of each variable for each activity and each subject were created in file data_with_means.txt.

