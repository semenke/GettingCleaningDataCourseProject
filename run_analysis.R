#Read in all the test data and combine

subjectIdentifierTest=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
test=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
activityTest=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
allTest=cbind(subjectIdentifierTest,activityTest,test)

#Read in all the train data and combine

subjectIdentifierTrain=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
train=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
activityTrain=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
allTrain=cbind(subjectIdentifierTrain,activityTrain,train)

#Combine test and train data

allData=rbind(allTest,allTrain)


#Read in the variable names and assign to columns

colNames=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
names(allData)[1]<-paste("SubjectID")
names(allData)[2]<-paste("Activity")
for (i in 3:563){
  names(allData)[i]<-paste(colNames[i-2,2])
}


#Read in the names for the activities and switch the numbers in the activity column for labels

activitylabels=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
activitylabels[,2]=as.character(activitylabels[,2])
for (i in 1:10299){
  act=as.numeric(allData[i,2])
  allData[i,2]=activitylabels[act,2]
}

sortColNumbers=c(grep("mean()",names(allData),fixed=TRUE,value=F),grep("std()",names(allData),fixed=TRUE,value=F))
sortColNumbers=sort(sortColNumbers)
sortColNumbers=c(1,2,sortColNumbers)
subsetData=allData[,sortColNumbers]

tidyOutput=vector()
for (j in 1:30){
  for (i in 1:6){
    if (i==1){action="WALKING"}
    if (i==2){action="WALKING_UPSTAIRS"}
    if (i==3){action="WALKING_DOWNSTAIRS"}
    if (i==4){action="SITTING"}
    if (i==5){action="STANDING"}
    if (i==6){action="LAYING"}
    tidyOutput=rbind(tidyOutput,sapply(filter(subsetData,Activity==action,SubjectID==j),mean))
  }
}

tidyOutput=data.frame(tidyOutput)
tidyOutput$Activity=as.character(tidyOutput$Activity)
for (j in 1:30){
  for (i in 1:6){
    if (i==1){action="WALKING"}
    if (i==2){action="WALKING_UPSTAIRS"}
    if (i==3){action="WALKING_DOWNSTAIRS"}
    if (i==4){action="SITTING"}
    if (i==5){action="STANDING"}
    if (i==6){action="LAYING"}
    row = ((j-1)*6)+i
    tidyOutput$Activity[row]=action
  }
}

write.table(tidyOutput,file="./tidyDataFinalOutput.txt",row.names=F)
