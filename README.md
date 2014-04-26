Peer Assessments / Getting and Cleaning Data Project
====================================================

1) Data source
   ===========

We obtain data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip at Sat Apr 26 23:03:00 2014. And unzip the data to working directory with R function unzip().



2) Reading train data
   ==================

We read train data from directory "UCI HAR Dataset/train". There are three files:

	a) "X_train.txt" this file contains source data from acc meters and gyro.
	b) "y_train.txt" this file contains code of activities for records from previous point
	c) "subject_train.txt" this file contains ID of subject for records from previous points

We read this files using function read.table(), then we set names for data frames columns 
	a) for file "X_train.txt" we read the names from file "UCI HAR Dataset/features.txt"
	b) for file "y_train.txt" we set name "act" for activity ID
	c) for file "subject_train.txt" we set name "subject"

Finally we connect data from all three files using data.frame() function.


3) Reading test data
   ==================

We read test data from directory "UCI HAR Dataset/test". There are three files:

	a) "X_test.txt" this file contains source data from acc meters and gyro.
	b) "y_test.txt" this file contains code of activities for records from previous point

We read this files using function read.table(), then we set names for data frames columns 
	a) for file "X_test.txt" we read the names from file "UCI HAR Dataset/features.txt"
	b) for file "y_test.txt" we set name "act" for activity ID

Finally we connect data from both files using data.frame() function. And add empty column "subject" (filled with NA values).



4) Merging data
   ============

In this point we connected train and test data, which we read in previous points. Train and test data have the same column, so we can simply use function rbind()



5) Calculation of mean
   ===================

For calculation of mean we need split data frame by activity code and subject. We use split() function and for splitting we use string vector which contain both subject and activity code.

For calculating of mean we use colMeans() function which is called from sapply() function.

Output from sapply() function should be transposed using t() function.




6) Cleaning of columns names
   ==========================

Finally we clean columns names with
	a) removing dots from names 
	b) transform all letters to lower case
	c) reordering of columns
		c1) removing activity code (it is redundant with description of activity)
		c2) moving of subject and activity to two first columns.

7) Saving output (tidy) data
   =========================

We use function write.csv() for saving data.



