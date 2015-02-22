## Coursera Smartphone Data Programming Assignment
# 

#load required libraries
library(data.table)
library(plyr)
library(reshape2)

#Set up working directories and folder locations
setwd("./UCI HAR Dataset")

trainLocation = "./train/"
testLocation = "./test/"

#Read in files
subject_test <- read.table(paste(testLocation, "subject_test.txt", sep=""))
X_test <- read.table(paste(testLocation, "X_test.txt", sep=""), fill=TRUE)
y_test <- read.table(paste(testLocation, "y_test.txt", sep=""), fill=TRUE, header=FALSE)

subject_train <- read.table(paste(trainLocation, "subject_train.txt", sep=""))
X_train <- read.table(paste(trainLocation, "X_train.txt", sep=""), fill=TRUE)
y_train <- read.table(paste(trainLocation, "y_train.txt", sep=""), fill=TRUE, header=FALSE)


#Merge data together
subject_both <- rbind(subject_test, subject_train)
x_both <- rbind(X_test, X_train)
y_both <- rbind(y_test, y_train)


#Label Activities
y_both$V1[y_both$V1 == 1] <- "Walking"
y_both$V1[y_both$V1 == 2] <- "WalkingUp"
y_both$V1[y_both$V1 == 3] <- "WalkingDown"
y_both$V1[y_both$V1 == 4] <- "Sitting"
y_both$V1[y_both$V1 == 5] <- "Standing"
y_both$V1[y_both$V1 == 6] <- "Laying"
colnames(y_both) <- "Activity"

#reduce x_both to only include the mean() and std() columns
x_both1 <- x_both[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)]

#pull the heading names of the variables from features.txt included in the data set
headings <- read.table("features.txt")
headingReduced <- headings[c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543),]

colnames(x_both1) <- headingReduced[,2]

#bind the y data to the x data to give the activity for each measurement
completeSet <- cbind(y_both, x_both1)

#melt the set so that the mean can be calculated with cast
completeSet1 <- melt(completeSet)

#cast the data and produce the mean for each measurement
completeSet2 <- dcast(completeSet1, Activity ~ variable,mean)

#write the data to a .txt file
write.table(completeSet2, file="tidySet.txt", row.name=FALSE)

