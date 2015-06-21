The purpose of this project is to demonstrate the student?s ability to collect, manipulate, and clean a data set, as a means of demonstrating his/her ability to wield a few of the industry standard tools necessary to prepare a dataset.  The goal is to prepare tidy data that can be used for later analysis. The student is required to submit the following: 

1. The tidy data set as required
2. A link to a Github repository with your script for performing the analysis, and 
3. A code book that describing the variables, data, and any transformations performed to clean the data called CodeBook.md. 
4. Include a README.md in the repo with scripts, explaining how the scripts work and their relationship to each other.
5. Below is a link to the data for the project:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## A single comprehensive R script, named run_analysis.R does the following:

a. Merges the training dataset and the test dataset to create a single data set
b. Extracts the mean and standard deviation for each measurement
c. Uses descriptive variable names & appropriately labels activities with the descriptive variableÿnames
d. From the appropriately labeled data set, creates an independent data set (tidy) with the mean of each variable for each activity and each subject

## README: Samsung Galaxy Accelerometer Application Data Analysis 

The submitted script written in the R programming language, manipulates, summarizes, and produces a cleaned (tidy) dataset from a raw dataset.

The data is collected from a test of 30 subjects using the Samsung Galaxy smartphone "wearable" accelerometer app that measures physical activity.  A hyperlink to the data used in this project may be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The script performs several main functions as follows:

a. downloads the appropriate data to the current working directory
b. converts raw data into data objects, then combines training and test data into a single file for analysis
c. renames abstract column names & activity to human-readable descriptive names
d. produces an aggregated tidy dataset by subject

Please upload the tidy data set created in step 5 of the instructions. 
Please upload your data set as a .txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).
Please submit a link to a Github repo with the code for performing your analysis. 
The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. 
The output should be the tidy data set submitted for part 1. 
Include a README.md in the repo describing how the script works and the code book describing the variables.

