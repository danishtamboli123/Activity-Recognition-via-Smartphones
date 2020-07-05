# The process of merging the Test and Train readings into a single file.

# Merging of subject_test and subject_train into Subject.
Subject <- rbind(subject_test,subject_train)

# Merging of x_test and x_train into X.
X <- rbind(x_test,x_train)

# Merging of y_test and y_train into Y.
Y <- rbind(y_test,y_train)

# Creating a new data set by combining the Subject, X and Y columns.
Merged_data <- cbind(Subject, X, Y)

#Selecting only the Data that has a realtion with Mean and Standard Deviation.
Required_data <- Merged_data %>% select(subject,label_code,contains("mean"),contains("std"))

# Giving names to the label_code of the data set. Aka chagning it from Range(1-6) to ["Walking","Walking_Upstairs".......] etc
Required_data$label_code <- activities[Required_data$label_code,2]

# Changing the Label name of the Label_code from Data set to "Activity" to make it easier to understand.
names(Required_data)[2] = "activity"

# Cleaning the appearance of the data to make it more easily removable,by ensuring CamelCase and removal of use of abbrevations etc.

names(Required_data) <- gsub("Acc", "Acceleration", names(Required_data))
names(Required_data) <- gsub("Gyro", "Gyroscope", names(Required_data))
names(Required_data) <- gsub("Mag", "Magnitude", names(Required_data))
names(Required_data) <- gsub("^t", "Time", names(Required_data))
names(Required_data) <- gsub("^f", "Frequency", names(Required_data))
names(Required_data) <- gsub("-mean()", "Mean", names(Required_data),ignore.case = TRUE)
names(Required_data) <- gsub("-std()", "STD", names(Required_data),ignore.case = TRUE)
names(Required_data) <- gsub("angle()", "Angle", names(Required_data),ignore.case = TRUE)
names(Required_data) <- gsub("gravity", "Gravity", names(Required_data),ignore.case = TRUE)


Final_Data <- Required_data %>%
  # Grouping data wrt to subject and then wrt to Activity
  group_by(subject,activity) %>%
  # Calculating the mean of each unique subject's and his/her activity's Features.
  summarise_all((funs(mean)))
#Saving the new Data into local storage in form of txt and CSV files for future use.
write.table(Final_Data, "Final_Data.txt")
write.csv(Final_Data,"Final_Data.csv")
