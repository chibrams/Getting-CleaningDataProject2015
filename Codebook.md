###Code Book
This code book summarizes the resulting data fields in tidy.txt.

##Identifiers

- subject - The ID of the test subject
- activity - The type of activity performed when the corresponding measurements were taken

##Measurements

Create a tidy data set
From the intermediate data set is created a final tidy data set where numeric variables are averaged for each activity and each subject.
The tidy data set contains 10299 observations with 81 variables divided in:
an activity label (Activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
an identifier of the subject who carried out the experiment (Subject): 1, 3, 5, 6, 7, 8, 11, 14, 15, 16, 17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 30
a 79-feature vector with time and frequency domain signal variables (numeric)
The following table relates the 17 signals to the names used as prefix for the variables names present in the data set. ".XYZ" denotes three variables, one for each axis.
- Name	Time domain	Frequency domain
- Body Acceleration	TimeDomain.BodyAcceleration.XYZ	FrequencyDomain.BodyAcceleration.XYZ
- Gravity Acceleration	TimeDomain.GravityAcceleration.XYZ	
- Body Acceleration Jerk	TimeDomain.BodyAccelerationJerk.XYZ	FrequencyDomain.BodyAccelerationJerk.XYZ
- Body Angular Speed	TimeDomain.BodyAngularSpeed.XYZ	FrequencyDomain.BodyAngularSpeed.XYZ
- Body Angular Acceleration	TimeDomain.BodyAngularAcceleration.XYZ	
- Body Acceleration Magnitude	TimeDomain.BodyAccelerationMagnitude	FrequencyDomain.BodyAccelerationMagnitude
- Gravity Acceleration Magnitude	TimeDomain.GravityAccelerationMagnitude	
- Body Acceleration Jerk Magnitude	TimeDomain.BodyAccelerationJerkMagnitude	FrequencyDomain.BodyAccelerationJerkMagnitude
- Body Angular Speed Magnitude	TimeDomain.BodyAngularSpeedMagnitude	FrequencyDomain.BodyAngularSpeedMagnitude
Body Angular Acceleration Magnitude	TimeDomain.BodyAngularAccelerationMagnitude	FrequencyDomain.BodyAngularAccelerationMagnitude
##Activity Labels
- WALKING (value 1): subject was walking during the test
- WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
- WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
- SITTING (value 4): subject was sitting during the test
- STANDING (value 5): subject was standing during the test
- LAYING (value 6): subject was laying down during the test
