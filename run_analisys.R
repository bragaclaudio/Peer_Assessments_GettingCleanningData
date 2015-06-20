#1)Merges the training and the test sets to create one data set.

#DATASET
file_test_set<-file.path(getwd(),"UCI HAR Dataset/test/X_test.txt")
test_set<-read.table(file_test_set)

file_train_set<-file.path(getwd(),"UCI HAR Dataset/train/X_train.txt")
train_set<-read.table(file_train_set)

Data_set<-rbind(test_set, train_set)


#LABLE
file_test_lable<-file.path(getwd(),"UCI HAR Dataset/test/y_test.txt")
test_lable<-read.table(file_test_lable)

file_train_lable<-file.path(getwd(),"UCI HAR Dataset/train/y_train.txt")
train_lable<-read.table(file_train_lable)

Lable<-rbind(test_lable, train_lable)

#SUBJECT
file_test_subject<-file.path(getwd(),"UCI HAR Dataset/test/subject_test.txt")
test_subject<-read.table(file_test_subject)

file_train_subject<-file.path(getwd(),"UCI HAR Dataset/train/subject_train.txt")
train_subject<-read.table(file_train_subject)

Subject<-rbind(test_subject, train_subject)

#2)Extracts only the measurements on the mean and standard deviation for each measurement. 

file_features<-file.path(getwd(),"UCI HAR Dataset/features.txt")
features<-read.table(file_features)

ind_mean<-grep("mean\\(",features[,2])
ind_std<-grep("std\\(",features[,2])

features_mean<-features[ind_mean,]
features_std<-features[ind_std,]
features_mean_std<-rbind(features_mean,features_std)

indices<-features_mean_std[,1]
Data_set<-Data_set[,indices]

features_mean_std$FriendlyName<-sub("\\(","",features_mean_std[,2])
features_mean_std$FriendlyName<-sub("\\)","",features_mean_std[,"FriendlyName"])
features_mean_std$FriendlyName<-sub("mean","Mean",features_mean_std[,"FriendlyName"])
features_mean_std$FriendlyName<-sub("std","Std",features_mean_std[,"FriendlyName"])

#3)Uses descriptive activity names to name the activities in the data set

file_activity<-file.path(getwd(),"UCI HAR Dataset/activity_labels.txt")
activity<-read.table(file_activity)

Data_set$activity<-Lable[,1]
Data_set$activityName<-activity[Data_set$activity,2]

Data_set$subject<-Subject[,1]
                    

#4)Appropriately labels the data set with descriptive variable names. 

names(Data_set)<-features_mean_std$FriendlyName
names(Data_set)[67]<-"ActivityID"
names(Data_set)[68]<-"Activity"
names(Data_set)[69]<-"Subject"

write.table(Data_set, "merged_data.txt")

#5)From the data set in step 4, creates a second, independent tidy
#data set with the average of each variable for each activity and 
#each subject.

QtdSubject <- 30
QtdActivity <- nrow(activity)
result<-0  # forces the first execution to assign resultInt to result (IF)
for(i in 1:QtdSubject) {
  for(j in 1:QtdActivity) {
    subconj<-Data_set[Data_set$ActivityID==j & Data_set$Subject==i,]
    resultInt<-apply(subconj[,1:66],2,mean)
    resultInt<-as.data.frame(matrix(resultInt,1,byrow=TRUE))
    resultInt$Subject<-i
    resultInt$ActivityID<-j    
    resultInt$activityName<-activity[resultInt$ActivityID,2]    
    if (is.null(dim(result))) {result<-resultInt} else {result<-rbind(result,resultInt)}
  }
}
names(result)<-c(features_mean_std$FriendlyName,"Subject","ActivityID","Activity")
write.table(result, "data_with_means.txt",row.name=FALSE)
