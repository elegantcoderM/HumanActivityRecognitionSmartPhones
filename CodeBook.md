---
    Tidy Data
    author: Manu Dhundi
    date: June 6th 2015

---
  
## Project Description
This is the **course project** in the **"Getting and Cleaning Data"** course in Data Science track on Coursera. Raw data collected from the accelerometers from the Samsung Galaxy S smartphone is processed and a tidy data is generated.
 
##Raw Data
 
###Collection of the raw data
Raw was collected by the experiments carried out with a group of *30 volunteers* within an age bracket of 19-48 years. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. More info about the raw data used in this project can be found at [README.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/README.txt).
 
###Notes on the original (raw) data 
More details about the raw data can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
 
##Creating the tidy datafile
 
The R script [run_analysis.R](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/run_analysis.R) can be run on the raw data in the repo to generate the [tidy data](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/tidydata.txt). To run the R script you would need [activity_labels.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/activity_labels.txt), [features.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/features.txt) and the test and train folders in the same directory level as the R script. The test and folders should contain the [data files](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/README.txt).
 
The R script does the following: 1) Merges the training and the test sets to create one data set. 2) Appropriately labels the data set with descriptive variable names, getting the names from the file [features.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/features.txt). 3) Extracts only the measurements on the mean and standard deviation for each measurement. 4) Uses descriptive activity names from [activity_labels.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/activity_labels.txt) to name the activities in the data set. 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. More info regarding the data transformations can be found in [README](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/README.md). 6) Generates the [tidydata.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/tidydata.txt) file from the table generated in step 5 using the write.table function.

R script uses plyr and dplyr libraries.

To generate the tidy data just source the R script.
 
##Description of the variables in the [tidydata.txt](https://github.com/elegantcoderM/HumanActivityRecognitionSmartPhones/blob/master/tidydata.txt) file
 - Dimensions of the dataset : 180 x 68
 - Summary of the data : contains the average of every **mean** and **standard deviation** variables in the raw data set for each **activity** and each **subject**. Below is the description of the variables which were averaged out for each **activity** and each **subject**.

###activity
 - Class of the variable: Factor
 - Unique values/levels of the variable: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
 - Unit of measurement: Factor
 
###subject
 - Class of the variable: integer
 - Unique values/levels of the variable: 1 to 30
 - Unit of measurement: Decimal number

###tBodyAcc.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable: 0.2216 to 0.3015
 - Unit of measurement
 
###tBodyAcc.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
 
###tBodyAcc.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAccMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerkMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerkMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.mean...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.mean...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.mean...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyAccJerkMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyGyroMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyGyroJerkMag.mean..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAcc.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAcc.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAcc.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAcc.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerk.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyro.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerk.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tGravityAccMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyAccJerkMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###tBodyGyroJerkMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAcc.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccJerk.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.std...X
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.std...Y
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyGyro.std...Z
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyAccMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyAccJerkMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyGyroMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
###fBodyBodyGyroJerkMag.std..
 - Class of the variable: numeric
 - Unique values/levels of the variable:
 - Unit of measurement:
 
##Sources
The format of this codebook was followed from [here](https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41).
