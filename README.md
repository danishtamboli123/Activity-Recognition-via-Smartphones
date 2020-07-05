# Data Analysis of Activity Recognition via Smartphones 6DOF sensor (3 Axis Accelerometer + 3 Axis Gyroscope)

An Analysis of **6 DOF Sensor** data wrt to recognizing various day to day activities such as walking, climbing, running, etc

## What is the UCI HAR Dataset?

* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

* Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

* Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

* The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 

## The Purpose of this Repo:

To make the use of UCI HAR Dataset easier to understand and interpret the Dataset that was optimized for Machine Learning models to predict activity for more conventional Data science researches.

### Modifications made to the Raw Dataset:

* Activities are given their proper labels from the original 1-6 Range.
* Features are given their proper labels from the original 1-361 Range.
* Test and Train Datasets have been merged into a single dataset.
* Labels have been made cleaner and more user interpretable.
* New Dataset (Final\_Data) has been grouped and sorted by participants followed by Activity.

### Importance of Files in this Repository:

#### README.md

* What you are reading right now, in a nutshell, will provide you all the information needed to understand what this repository is about and what its aim is.

#### loading_data.R

* The script to :
 * Check whether the Dataset zip exists, if not, to download it.
 * Check whether the Dataset has been unzipped and the directory exists, if not, to Unzip it in the right directory.
 * To read and store the respective Dataset files/variables listed below to extract the required information into the workspace/project.

#### run_analysis.R

* The Script to :
 * To merge the Training and Testing Datasets into a single dataset.
 * Merge extracted data into a much more sensible and interpretable dataset/table.
 * Making Dataset more interpretable by Using more user-friendly terms (eg. Running, Walking as Activities rather than 1,2)
 * Cleaning of Label Names of Dataset.
 * Grouping and Sorting of the new dataset.
 * Calculating the mean of Each Feature/Reading from the sensor.
 * Exporting of New Dataset into more friendly formats such as CSV rather than txt.

#### CodeBook.md 

* Provides a Summary of the UCL HAR Dataset, which you can refer to understand all about the variables and features of the Dataset.

#### Final\_Data.txt/Final\_Data.csv

* The Final cleaned Data set that can be easily imported and further used for Analysis of sensor Data wrt to Activity being performed.