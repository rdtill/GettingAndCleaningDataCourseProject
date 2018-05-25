README

1. Download the required data from the url below.

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


2. Before running the script ensure that you have created a directory called "data" in the same directory as this script. Once created, place the following files into the "data" directory.

	From the UCI HAR Dataset directory from download
	  activity_labels.txt
	  features.txt
	
	From the test directory within the UCI HAR Dataset directory
	  subject_test.txt
	  X_test.txt
	  y_test.txt
	
	From the train directory within the UCI HAR Dataset directory
	  subject_train.txt
	  X_train.txt
	  y_train.txt


3. Open the run_analysis.R script and set the working directory to the "data" directory that you created in step 1.


4. Run the script. The tidy data set will be created as a txt file in the data directory called "tidyDF.txt"