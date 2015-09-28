#Download the file and unzip it in the data folder UCI HAR Dataset.

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="auto")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)

#Read data from the 6 files into 6 variables.

ActivityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)
SubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
SubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)
FeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
FeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

# 1- Merges the training and the test sets to create one data set.

Subject <- rbind(SubjectTrain, SubjectTest)
Activity<- rbind(ActivityTrain, ActivityTest)
Features<- rbind(FeaturesTrain, FeaturesTest)
names(Subject)<-c("subject")
names(Activity)<- c("activity")
FeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(Features)<- FeaturesNames$V2
Combine <- cbind(Subject, Activity)
Data <- cbind(Features, Combine)

# 2- Extracts only the measurements on the mean and standard deviation for each measurement.

subFeaturesNames<-FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]
NamesSelected<-c(as.character(subFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=NamesSelected)

# 3- Uses descriptive activity names to name the activities in the data set

ActivityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)

Data$activity<- as.character(Data$activity)
Data$activity[Data$activity == 1] <- "Walking"
Data$activity[Data$activity == 2] <- "Walking Upstairs"
Data$activity[Data$activity == 3] <- "Walking Downstairs"
Data$activity[Data$activity == 4] <- "sitting"
Data$activity[Data$activity == 5] <- "standing"
Data$activity[Data$activity == 6] <- "Laying"
Data$activity<- as.factor(Data$activity)

# 4- Appropriately labels the data set with descriptive names.

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

# 5- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

install.packages("plyr")
library(plyr);

Data1<-aggregate(. ~subject + activity, Data, mean)
Data1<-Data1[order(Data1$subject,Data1$activity),]
write.table(Data1, file = "tidydata.txt",row.name=FALSE)


