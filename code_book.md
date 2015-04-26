Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector:
X1.tBodyAcc.mean...X
2	X2.tBodyAcc.mean...Y
3	X3.tBodyAcc.mean...Z
4	X41.tGravityAcc.mean...X
5	X42.tGravityAcc.mean...Y
6	X43.tGravityAcc.mean...Z
7	X81.tBodyAccJerk.mean...X
8	X82.tBodyAccJerk.mean...Y
9	X83.tBodyAccJerk.mean...Z
10	X121.tBodyGyro.mean...X
11	X122.tBodyGyro.mean...Y
12	X123.tBodyGyro.mean...Z
13	X161.tBodyGyroJerk.mean...X
14	X162.tBodyGyroJerk.mean...Y
15	X163.tBodyGyroJerk.mean...Z
16	X201.tBodyAccMag.mean..
17	X214.tGravityAccMag.mean..
18	X227.tBodyAccJerkMag.mean..
19	X240.tBodyGyroMag.mean..
20	X253.tBodyGyroJerkMag.mean..
21	X266.fBodyAcc.mean...X
22	X267.fBodyAcc.mean...Y
23	X268.fBodyAcc.mean...Z
24	X345.fBodyAccJerk.mean...X
25	X346.fBodyAccJerk.mean...Y
26	X347.fBodyAccJerk.mean...Z
27	X424.fBodyGyro.mean...X
28	X425.fBodyGyro.mean...Y
29	X426.fBodyGyro.mean...Z
30	X503.fBodyAccMag.mean..
31	X516.fBodyBodyAccJerkMag.mean..
32	X529.fBodyBodyGyroMag.mean..
33	X542.fBodyBodyGyroJerkMag.mean..
34	X4.tBodyAcc.std...X
35	X5.tBodyAcc.std...Y
36	X6.tBodyAcc.std...Z
37	X44.tGravityAcc.std...X
38	X45.tGravityAcc.std...Y
39	X46.tGravityAcc.std...Z
40	X84.tBodyAccJerk.std...X
41	X85.tBodyAccJerk.std...Y
42	X86.tBodyAccJerk.std...Z
43	X124.tBodyGyro.std...X
44	X125.tBodyGyro.std...Y
45	X126.tBodyGyro.std...Z
46	X164.tBodyGyroJerk.std...X
47	X165.tBodyGyroJerk.std...Y
48	X166.tBodyGyroJerk.std...Z
49	X202.tBodyAccMag.std..
50	X215.tGravityAccMag.std..
51	X228.tBodyAccJerkMag.std..
52	X241.tBodyGyroMag.std..
53	X254.tBodyGyroJerkMag.std..
54	X269.fBodyAcc.std...X
55	X270.fBodyAcc.std...Y
56	X271.fBodyAcc.std...Z
57	X348.fBodyAccJerk.std...X
58	X349.fBodyAccJerk.std...Y
59	X350.fBodyAccJerk.std...Z
60	X427.fBodyGyro.std...X
61	X428.fBodyGyro.std...Y
62	X429.fBodyGyro.std...Z
63	X504.fBodyAccMag.std..
64	X517.fBodyBodyAccJerkMag.std..
65	X530.fBodyBodyGyroMag.std..
66	X543.fBodyBodyGyroJerkMag.std..

