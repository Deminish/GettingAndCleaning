# GettingAndCleaning
Coursera - Getting and Cleaning Data


To read the tidy data back into R please use the following command:
 data <- read.table(file_path, header = TRUE)  
(Source:  https://class.coursera.org/getdata-011/forum/thread?thread_id=69  )

run_analysis.R

Loads required packages; data.table, plyr, reshape2

Sets working directories and locations for test and train folders

Reads in the files containing the pertinent information within the test and train folders

Binds the test and train files together

Labels the activities with an appropriate name

Extracts the required columns from the data

Takes the names of each of the measured variables from the "features.txt" file

Appends the variable names to the data set

Binds the Activity and subject ID onto the measured variables

Melts the data into long form

Casts the data so that the means can be calculated for each variable for each activity and subject

Writes the tidy set to "tidySet.txt"



