---
title: "CodeBook"
author: "Chris Hartfield"
---

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):  

<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
<li>tBodyAccJerk-XYZ</li>
<li>tBodyGyro-XYZ</li>
<li>tBodyGyroJerk-XYZ</li>
<li>tBodyAccMag</li>
<li>tGravityAccMag</li>
<li>tBodyAccJerkMag</li>
<li>tBodyGyroMag</li>
<li>tBodyGyroJerkMag</li>
<li>fBodyAcc-XYZ</li>
<li>fBodyAccJerk-XYZ</li>
<li>fBodyGyro-XYZ</li>
<li>fBodyAccMag</li>
<li>fBodyAccJerkMag</li>
<li>fBodyGyroMag</li>
<li>fBodyGyroJerkMag</li>
</br>
The set of variables that were estimated from these signals are: 

<li>mean(): Mean value</li>
<li>std(): Standard deviation</li>
<li>mad(): Median absolute deviation </li>
<li>max(): Largest value in array</li>
<li>min(): Smallest value in array</li>
<li>sma(): Signal magnitude area</li>
<li>energy(): Energy measure. Sum of the squares divided by the number of values</li>
<li>iqr(): Interquartile range</li> 
<li>entropy(): Signal entropy</li>
<li>arCoeff(): Autorregresion coefficients with Burg order equal to 4</li>
<li>correlation(): correlation coefficient between two signals</li>
<li>maxInds(): index of the frequency component with largest magnitude</li>
<li>meanFreq(): Weighted average of the frequency components to obtain a mean frequency</li>
<li>skewness(): skewness of the frequency domain signal</li> 
<li>kurtosis(): kurtosis of the frequency domain signal</li> 
<li>bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window</li>
<li>angle(): Angle between to vectors</li>
</br>

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

<li>gravityMean</li>
<li>tBodyAccMean</li>
<li>tBodyAccJerkMean</li>
<li>tBodyGyroMean</li>
<li>tBodyGyroJerkMean</li>
</br>

For each record in the raw dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
* Triaxial Angular velocity from the gyroscope
* A 561-feature vector with time and frequency domain variables
* Its activity label
* An identifier of the subject who carried out the experiment
