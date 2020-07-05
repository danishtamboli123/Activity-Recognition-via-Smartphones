# Check for if Zip has been Downloaded,else to download.
if(!file.exists("UCI_HAR_Dataset.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","UCI_HAR_Dataset.zip")
}
# Check for if Zip has been Unzipped,else to unzip.
if(!file.exists("UCI_HAR_Dataset")){
  unzip("UCI_HAR_Dataset.zip")
}

# Changing the Working Directory to the Extracted Folder.
setwd("UCI HAR Dataset")

# Extracting information from the text files.

# The Data set has 561 unique readings that have been termed as "Features" (Range 1-561 ).
features <- read.table("features.txt", col.names = c("n","feature") )

# The Data set was taken with the participants performing 6 different activities each having a label_code of its own (Range 1-6).
activities <- read.table("activity_labels.txt", col.names = c("label_code", "activity"))

# This identifies which Subject performed the respective activity (Range 1-30)
subject_test <- read.table("test/subject_test.txt",col.names = "subject")

# The Data set has been divided into Training and Test data set for Machine Learning Purposes,for our use case we require the Original Data set back.

# Contains the respective readings of Features.
x_test <- read.table("test/X_test.txt",col.names = features$feature)

# Contains the label code / Type of Activity corresponding to the x_text / Feature.
y_test <- read.table("test/y_test.txt", col.names = "label_code" )

# This identifies which Subject performed the respective activity (Range 1-30)
subject_train <- read.table("train/subject_train.txt",col.names = "subject")

# Contains the respective readings of Features.
x_train <- read.table("train/X_train.txt",col.names = features$feature)

# Contains the label code / Type of Activity corresponding to the x_text / Feature.
y_train <- read.table("train/y_train.txt", col.names = "label_code" )