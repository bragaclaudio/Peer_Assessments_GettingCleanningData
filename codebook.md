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

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

