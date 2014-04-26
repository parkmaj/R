CodeBook
========

All column names in file "tidy.txt" are derived from original "UCI HAR Dataset". There are removed dots and all names was transformed to lower case.

All columns excepd first two contains average data calculated from original data set for each activity and each subject.


| Column name  | Original column name |
|--------------|----------------------|
| activity  |  description of activity (based on file "activity_labels.txt") |
| subject  |  ID of subject |
| tbodyaccmeanx  |  tBodyAcc.mean...X |
| tbodyaccmeany  |  tBodyAcc.mean...Y |
| tbodyaccmeanz  |  tBodyAcc.mean...Z |
| tbodyaccstdx  |  tBodyAcc.std...X |
| tbodyaccstdy  |  tBodyAcc.std...Y |
| tbodyaccstdz  |  tBodyAcc.std...Z |
| tgravityaccmeanx  |  tGravityAcc.mean...X |
| tgravityaccmeany  |  tGravityAcc.mean...Y |
| tgravityaccmeanz  |  tGravityAcc.mean...Z |
| tgravityaccstdx  |  tGravityAcc.std...X |
| tgravityaccstdy  |  tGravityAcc.std...Y |
| tgravityaccstdz  |  tGravityAcc.std...Z |
| tbodyaccjerkmeanx  |  tBodyAccJerk.mean...X |
| tbodyaccjerkmeany  |  tBodyAccJerk.mean...Y |
| tbodyaccjerkmeanz  |  tBodyAccJerk.mean...Z |
| tbodyaccjerkstdx  |  tBodyAccJerk.std...X |
| tbodyaccjerkstdy  |  tBodyAccJerk.std...Y |
| tbodyaccjerkstdz  |  tBodyAccJerk.std...Z |
| tbodygyromeanx  |  tBodyGyro.mean...X |
| tbodygyromeany  |  tBodyGyro.mean...Y |
| tbodygyromeanz  |  tBodyGyro.mean...Z |
| tbodygyrostdx  |  tBodyGyro.std...X |
| tbodygyrostdy  |  tBodyGyro.std...Y |
| tbodygyrostdz  |  tBodyGyro.std...Z |
| tbodygyrojerkmeanx  |  tBodyGyroJerk.mean...X |
| tbodygyrojerkmeany  |  tBodyGyroJerk.mean...Y |
| tbodygyrojerkmeanz  |  tBodyGyroJerk.mean...Z |
| tbodygyrojerkstdx  |  tBodyGyroJerk.std...X |
| tbodygyrojerkstdy  |  tBodyGyroJerk.std...Y |
| tbodygyrojerkstdz  |  tBodyGyroJerk.std...Z |
| tbodyaccmagmean  |  tBodyAccMag.mean.. |
| tbodyaccmagstd  |  tBodyAccMag.std.. |
| tgravityaccmagmean  |  tGravityAccMag.mean.. |
| tgravityaccmagstd  |  tGravityAccMag.std.. |
| tbodyaccjerkmagmean  |  tBodyAccJerkMag.mean.. |
| tbodyaccjerkmagstd  |  tBodyAccJerkMag.std.. |
| tbodygyromagmean  |  tBodyGyroMag.mean.. |
| tbodygyromagstd  |  tBodyGyroMag.std.. |
| tbodygyrojerkmagmean  |  tBodyGyroJerkMag.mean.. |
| tbodygyrojerkmagstd  |  tBodyGyroJerkMag.std.. |
| fbodyaccmeanx  |  fBodyAcc.mean...X |
| fbodyaccmeany  |  fBodyAcc.mean...Y |
| fbodyaccmeanz  |  fBodyAcc.mean...Z |
| fbodyaccstdx  |  fBodyAcc.std...X |
| fbodyaccstdy  |  fBodyAcc.std...Y |
| fbodyaccstdz  |  fBodyAcc.std...Z |
| fbodyaccmeanfreqx  |  fBodyAcc.meanFreq...X |
| fbodyaccmeanfreqy  |  fBodyAcc.meanFreq...Y |
| fbodyaccmeanfreqz  |  fBodyAcc.meanFreq...Z |
| fbodyaccjerkmeanx  |  fBodyAccJerk.mean...X |
| fbodyaccjerkmeany  |  fBodyAccJerk.mean...Y |
| fbodyaccjerkmeanz  |  fBodyAccJerk.mean...Z |
| fbodyaccjerkstdx  |  fBodyAccJerk.std...X |
| fbodyaccjerkstdy  |  fBodyAccJerk.std...Y |
| fbodyaccjerkstdz  |  fBodyAccJerk.std...Z |
| fbodyaccjerkmeanfreqx  |  fBodyAccJerk.meanFreq...X |
| fbodyaccjerkmeanfreqy  |  fBodyAccJerk.meanFreq...Y |
| fbodyaccjerkmeanfreqz  |  fBodyAccJerk.meanFreq...Z |
| fbodygyromeanx  |  fBodyGyro.mean...X |
| fbodygyromeany  |  fBodyGyro.mean...Y |
| fbodygyromeanz  |  fBodyGyro.mean...Z |
| fbodygyrostdx  |  fBodyGyro.std...X |
| fbodygyrostdy  |  fBodyGyro.std...Y |
| fbodygyrostdz  |  fBodyGyro.std...Z |
| fbodygyromeanfreqx  |  fBodyGyro.meanFreq...X |
| fbodygyromeanfreqy  |  fBodyGyro.meanFreq...Y |
| fbodygyromeanfreqz  |  fBodyGyro.meanFreq...Z |
| fbodyaccmagmean  |  fBodyAccMag.mean.. |
| fbodyaccmagstd  |  fBodyAccMag.std.. |
| fbodyaccmagmeanfreq  |  fBodyAccMag.meanFreq.. |
| fbodybodyaccjerkmagmean  |  fBodyBodyAccJerkMag.mean.. |
| fbodybodyaccjerkmagstd  |  fBodyBodyAccJerkMag.std.. |
| fbodybodyaccjerkmagmeanfreq  |  fBodyBodyAccJerkMag.meanFreq.. |
| fbodybodygyromagmean  |  fBodyBodyGyroMag.mean.. |
| fbodybodygyromagstd  |  fBodyBodyGyroMag.std.. |
| fbodybodygyromagmeanfreq  |  fBodyBodyGyroMag.meanFreq.. |
| fbodybodygyrojerkmagmean  |  fBodyBodyGyroJerkMag.mean.. |
| fbodybodygyrojerkmagstd  |  fBodyBodyGyroJerkMag.std.. |
| fbodybodygyrojerkmagmeanfreq  |  fBodyBodyGyroJerkMag.meanFreq.. |
| angletbodyaccmeangravity  |  angle.tBodyAccMean.gravity. |
| angletbodyaccjerkmeangravitymean  |  angle.tBodyAccJerkMean..gravityMean. |
| angletbodygyromeangravitymean  |  angle.tBodyGyroMean.gravityMean. |
| angletbodygyrojerkmeangravitymean  |  angle.tBodyGyroJerkMean.gravityMean. |
| anglexgravitymean  |  angle.X.gravityMean. |
| angleygravitymean  |  angle.Y.gravityMean. |
| anglezgravitymean  |  angle.Z.gravityMean. |
