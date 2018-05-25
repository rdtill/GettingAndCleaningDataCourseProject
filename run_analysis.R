#Week 4 Assignment

#####
setwd("") #changing working directory to the data directory located in the same directory as this script
#####

#reading in descriptive files
activityLabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

#reading in test sets
subtest <- read.table("subject_test.txt")
xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")

#reading in train sets
subtrain <- read.table("subject_train.txt")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")

#setting colnames of the test and train sets to the appropriate features
colnames(xtest) <- as.character(features$V2)
colnames(xtrain) <- as.character(features$V2)

#putting both test and train data, as well as subject number and ability label
#into one data frame.
testtrainmerge <- rbind(data.frame(Subject = subtest$V1, ActivityLabel = ytest$V1, xtest), 
                        data.frame(Subject = subtrain$V1, ActivityLabel = ytrain$V1, xtrain))

#getting the column numbers where either "mean()" or "std()" are found in the column name
#and extracting only those columns to a data frame (meanstdDF)
#NOTE: I also include the "Subject" and "ActivityLabel" columns so they are do not need to
#      be re-added later on.
meanstdindex <- union(grep("mean()", colnames(testtrainmerge)), 
                      grep("std()", colnames(testtrainmerge)))
meanstdindex <- union(c(1,2), meanstdindex)
meanstdDF <- testtrainmerge[, meanstdindex]

#assigning the approptiate activty names to their correstponding numeric values
meanstdDF$ActivityLabel <- activityLabels$V2[meanstdDF$ActivityLabel]

#setting the data to a seperate data frame to be 
tidyDF <- meanstdDF

#writing the tidyDF to a txt file
write.table(x = tidyDF, file = "tidyDF.txt", row.names = FALSE)

test <- dirname(sys.frame(1)$ofile)