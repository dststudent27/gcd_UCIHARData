## Code Book

The original data is Human Activity Recognition public data collected from accelerometers worn by subjects using the Samsung Galaxy S smartphone. A  comprehensive description of the trial is available at the address below: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The GCD project dataset results from a test performed by 30 subjects using a Samsung wearable accelerometer that measures spatial physical activity.  A hyperlink to the data used in this project may be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The working directory is located in the folder: UCIHARData
The data sets used for this project, from the working directory:

train/X_train.txt
train/y_train.txt
train/subject_train.txt

test/X_test.txt  
test/y_test.txt
test/subject_test.txt

Informational/Descriptive files:
activity_labels.txt
features_info.txt
features.txt

Variables used in this project:
subject : numerically identifies the subject performing the activity.
activity: describes the performed activity

These descriptively defined features/variables contain the mean & standard deviation per variable in the original dataset (per activity, per subject) 

timeBodyAcc-mean()-X
timeBodyAcc-mean()-Y
timeBodyAcc-mean()-Z
timeBodyAcc-std()-X
timeBodyAcc-std()-Y
timeBodyAcc-std()-Z
timeGravityAcc-mean()-X
timeGravityAcc-mean()-Y
timeGravityAcc-mean()-Z
timeGravityAcc-std()-X
timeGravityAcc-std()-Y
timeGravityAcc-std()-Z
timeBodyAccJerk-mean()-X
timeBodyAccJerk-mean()-Y
timeBodyAccJerk-mean()-Z
timeBodyAccJerk-std()-X
timeBodyAccJerk-std()-Y
timeBodyAccJerk-std()-Z
timeBodyGyro-mean()-X
timeBodyGyro-mean()-Y
timeBodyGyro-mean()-Z
timeBodyGyro-std()-X
timeBodyGyro-std()-Y
timeBodyGyro-std()-Z
timeBodyGyroJerk-mean()-X
timeBodyGyroJerk-mean()-Y
timeBodyGyroJerk-mean()-Z
timeBodyGyroJerk-std()-X
timeBodyGyroJerk-std()-Y
timeBodyGyroJerk-std()-Z
timeBodyAccMag-mean()
timeBodyAccMag-std()
timeGravityAccMag-mean()
timeGravityAccMag-std()
timeBodyAccJerkMag-mean()
timeBodyAccJerkMag-std()
timeBodyGyroMag-mean()
timeBodyGyroMag-std()
timeBodyGyroJerkMag-mean()
timeBodyGyroJerkMag-std()
freqBodyAcc-mean()-X
freqBodyAcc-mean()-Y
freqBodyAcc-mean()-Z
freqBodyAcc-std()-X
freqBodyAcc-std()-Y
freqBodyAcc-std()-Z
freqBodyAcc-meanFreq()-X
freqBodyAcc-meanFreq()-Y
freqBodyAcc-meanFreq()-Z
freqBodyAccJerk-mean()-X
freqBodyAccJerk-mean()-Y
freqBodyAccJerk-mean()-Z
freqBodyAccJerk-std()-X
freqBodyAccJerk-std()-Y
freqBodyAccJerk-std()-Z
freqBodyAccJerk-meanFreq()-X
freqBodyAccJerk-meanFreq()-Y
freqBodyAccJerk-meanFreq()-Z
freqBodyGyro-mean()-X
freqBodyGyro-mean()-Y
freqBodyGyro-mean()-Z
freqBodyGyro-std()-X
freqBodyGyro-std()-Y
freqBodyGyro-std()-Z
freqBodyGyro-meanFreq()-X
freqBodyGyro-meanFreq()-Y
freqBodyGyro-meanFreq()-Z
freqBodyAccMag-mean()
freqBodyAccMag-std()
freqBodyAccMag-meanFreq()
freqBodyAccJerkMag-mean()
freqBodyAccJerkMag-std()
freqBodyAccJerkMag-meanFreq()
freqBodyGyroMag-mean()
freqBodyGyroMag-std()
freqBodyGyroMag-meanFreq()
freqBodyGyroJerkMag-mean()
freqBodyGyroJerkMag-std()
freqBodyGyroJerkMag-meanFreq()

## Transformations defining a clean dataset

- merge test dataset and train dataset into a single dataset & matching to
  the corresponding subject and activity, respectively
- extract mean & standard deviation measurement per activity, per subject
- from abstract names, reassign descriptive names to activities
- from abstract names, reassign descriptive names to features
- create an independent tidy data set containing the mean of each variable 
  per activity, per subject. 
