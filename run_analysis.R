
#set working directory
#setwd("D:/parkmaj/_R/data_Anal")


#download dataset to working directory
#url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#setInternet2(TRUE)
#download.file(url1, destfile="UCI HAR Dataset.zip", method="curl")

#unzip data to working directory
#unzip("UCI HAR Dataset.zip")

#read column names for train and test data
features <- read.table("UCI HAR Dataset/features.txt")

#read source test data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
#set column names for test data
names(x_test) <- features$V2

#read activities for test data to column "act"
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "act"


#merge source data and activity to one data frame
xy_test <- data.frame(x_test,y_test)


#read source train data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
#set column names for train data
names(x_train) <- features$V2

#read activities for train data to column "act"
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
names(y_train) <- "act"

subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject) <- "subject"

#merge source data and activity to one data frame
xy_train <- data.frame(x_train,y_train,subject)
#train data doesnt contain information about subject, we use NA instead it
xy_test$subject <- NA


#merge train and test data to one dataframe 
xy<-rbind(xy_test,xy_train)


#select only interesting columns
xy[,grep("mean|std|act|subject", names(xy), ignore.case=T)]->xyt


#read names of activities 
activities <- read.table("UCI HAR Dataset/activity_labels.txt", string=F)
names(activities) <- c("act", "activity")

#Add names of activities to data frame
merge(xyt,activities)->xytm


#split dataframe for each activity and each subject
split(xytm[,!(names(xytm) %in% c("astmp","activity"))], paste(xytm$act,xytm$subject,sep="-"))->xytmt


#calculate means on splited data
data.frame(t(sapply(xytmt, colMeans)))->newdf


#add activities names do result
merge(newdf,activities)->newdfa

#clean names (remove '.' and transform to lower case)
names(newdfa)<-gsub("\\.","",names(newdfa))
names(newdfa)<-tolower(names(newdfa))

#column reordering 
newdfao<-cbind(newdfa[c(89,88)],newdfa[c(-1,-88,-89)])

#write result 
write.csv(newdfao, file="tidy.txt", row.names=F)
