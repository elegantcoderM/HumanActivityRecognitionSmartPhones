library(dplyr)
library(plyr)

###############################################################
# Merge the training and the test sets to create one data set #
###############################################################
data_set_type <- c("train", "test")
data_file_name_type <- c("subject", "X", "y")

# Read all files
# the below nested for loops create 6 variables:
# X_train, y_train, subject_train, X_test, y_test, subject_test
for (type in data_set_type) {
  for (name in data_file_name_type) {
    assign(paste(name, type, sep = "_"),
           read.table(paste("./", type, "/", name, "_", type, ".txt",
                            sep = "")))
  }
}

# Merge the read training and test data
# the merged data is put into variables: X_all, y_all, subject_all
for (name in data_file_name_type) {
  assign(paste(name, "_all", sep = ""),
         rbind(get(paste(name, data_set_type[1], sep = "_")),
               get(paste(name, data_set_type[2], sep = "_"))))
}

# Add feature names
features <- read.table("features.txt")
colnames(X_all) <- as.character(features[,2])

colnames(y_all) <- "activity"
colnames(subject_all) <- "subject"

# Merge subject, activity and observed value into one data variable
data <- cbind(subject_all, y_all, X_all)

########################################################################
# Extract only the measurements on the mean and standard deviation for #
# each measurement.                                                    #
########################################################################
# Convert data into tbl format
data <- tbl_df(data)

# We are interested only in mean and std_dev cols and these do not have
# duplicates so remove the duplicates
data <- data[!duplicated(names(data))]

mean_col_indices <- which(grepl("mean\\(\\)", colnames(data)))
std_dev_col_indices <- which(grepl("std\\(\\)", colnames(data)))

# 1 and 2 are subject and actvity columns
data <- select(data, 1, 2, mean_col_indices, std_dev_col_indices)

#########################################################################
# Use descriptive activity names to name the activities in the data set #
#########################################################################
activity_lab <- read.table("activity_labels.txt")
data$activity <- factor(data$activity, labels = activity_lab[,2])

#####################################################################
# Appropriately label the data set with descriptive variable names. #
#####################################################################
# Already done above in line 30

############################################################################
# From the data set in step 4, create a second, independent tidy data      #
# set with the average of each variable for each activity and each subject #
############################################################################
# Remove invalid chars from the names
names(data) <- make.names(names(data))

# Calculate the means of all the variables by the grouping on subject 
# and activity
tidydata <- ddply(data, .(activity, subject), numcolwise(mean,na.rm = TRUE))

# Write data onto a file
write.table(tidydata, "tidydata.txt")

