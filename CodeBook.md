# GettingAndCleaning
Coursera - Getting and Cleaning Data

#Code Book

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Description of data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiments have been carried out using a Samsung Galaxy SII smartphone
There were 30 volunteers each performing 6 activities (described below)
A number of measurements were carried out using the phone's accelerometer and gyroscope


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Activity:
 The activity that was being performed for each measurement:
- Laying: The subject was lying down
- Sitting: The subject was sitting down
- Standing: The subject was standing up
- Walking: The subject was walking
- WalkingDown: The subject was walking downstairs
- WalkingUp: The subject was walking upstairs

