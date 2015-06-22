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
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
###subject
###tBodyAcc.mean...X
###tBodyAcc.mean...Y
###tBodyAcc.mean...Z
###tGravityAcc.mean...X
###tGravityAcc.mean...Y
###tGravityAcc.mean...Z
###tBodyAccJerk.mean...X
###tBodyAccJerk.mean...Y
###tBodyAccJerk.mean...Z
###tBodyGyro.mean...X
###tBodyGyro.mean...Y
###tBodyGyro.mean...Z
###tBodyGyroJerk.mean...X
###tBodyGyroJerk.mean...Y
###tBodyGyroJerk.mean...Z
###tBodyAccMag.mean..
###tGravityAccMag.mean..
###tBodyAccJerkMag.mean..
###tBodyGyroMag.mean..
###tBodyGyroJerkMag.mean..
###fBodyAcc.mean...X
###fBodyAcc.mean...Y
###fBodyAcc.mean...Z
###fBodyAccJerk.mean...X
###fBodyAccJerk.mean...Y
###fBodyAccJerk.mean...Z
###fBodyGyro.mean...X
###fBodyGyro.mean...Y
###fBodyGyro.mean...Z
###fBodyAccMag.mean..
###fBodyBodyAccJerkMag.mean..
###fBodyBodyGyroMag.mean..
###fBodyBodyGyroJerkMag.mean..
###tBodyAcc.std...X
###tBodyAcc.std...Y
###tBodyAcc.std...Z
###tGravityAcc.std...X
###tGravityAcc.std...Y
###tGravityAcc.std...Z
###tBodyAccJerk.std...X
###tBodyAccJerk.std...Y
###tBodyAccJerk.std...Z
###tBodyGyro.std...X
###tBodyGyro.std...Y
###tBodyGyro.std...Z
###tBodyGyroJerk.std...X
###tBodyGyroJerk.std...Y
###tBodyGyroJerk.std...Z
###tBodyAccMag.std..
###tGravityAccMag.std..
###tBodyAccJerkMag.std..
###tBodyGyroMag.std..
###tBodyGyroJerkMag.std..
###fBodyAcc.std...X
###fBodyAcc.std...Y
###fBodyAcc.std...Z
###fBodyAccJerk.std...X
###fBodyAccJerk.std...Y
###fBodyAccJerk.std...Z
###fBodyGyro.std...X
###fBodyGyro.std...Y
###fBodyGyro.std...Z
###fBodyAccMag.std..
###fBodyBodyAccJerkMag.std..
###fBodyBodyGyroMag.std..
###fBodyBodyGyroJerkMag.std..
 
##Sources
The format of this codebook was followed from [here](https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41).
