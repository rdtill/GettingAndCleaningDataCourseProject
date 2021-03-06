tidyDF Codebook

Description:
	The run_analysis.R script gathers and cleans the data from the below zip file. It then outputs a data frame called tidyDF.txt.
	
1. Subject:
	Integers 1-30. Each number represents the unique subject that the data was gathered for.

2. Activity Label:
	Description of what physical activity the subject was doing while the data was being gathered. The list of possible activities is shown below.
	
		Standing
		Sitting
		Laying
		Walking
		Walking_Downstairs
		Walking_Upstairs

3. Remaing variable names:
	The remaing variable names and their description are listed below.


	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
	and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
	Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency 
	of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
	signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 
	0.3 Hz. 

	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
	(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
	using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
	
	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
	fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate 
	frequency domain signals). 

	These signals were used to estimate variables of the feature vector for each pattern:  
	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

		tBodyAcc-XYZ
		tGravityAcc-XYZ
		tBodyAccJerk-XYZ
		tBodyGyro-XYZ
		tBodyGyroJerk-XYZ
		tBodyAccMag
		tGravityAccMag
		tBodyAccJerkMag
		tBodyGyroMag
		tBodyGyroJerkMag
		fBodyAcc-XYZ
		fBodyAccJerk-XYZ
		fBodyGyro-XYZ
		fBodyAccMag
		fBodyAccJerkMag
		fBodyGyroMag
		fBodyGyroJerkMag


	This data set only includes values for the mean and standard deviation of the raw data. If in the 
	variable name "mean" is found, then the value corresponds to the mean of the original data specified.
	If in the variable name "std" is found, then the value corresponds to the standard deviation of the 
	original data specified.
