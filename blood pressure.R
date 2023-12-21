Dataset<- read.csv("E:/data.csv",header = TRUE,sep = ",")
Dataset







names(Dataset)
summary(Dataset)
str(Dataset)
sum(is.na(Dataset))
mode(Dataset$age)
mode(Dataset$gender)
mode(Dataset$impluse)
mode(Dataset$pressurehight)
mode(Dataset$pressurelow)
mode(Dataset$glucose)
mode(Dataset$class)
Dataset
names(sort(table((Dataset$age))))
names(sort(table(Dataset$gender)))
names(sort(table(Dataset$impluse)))
names(sort(table(Dataset$pressurehight)))
names(sort(table(Dataset$pressurelow)))
names(sort(table(Dataset$glucose)))
names(sort(table(Dataset$class)))











Dataset$gender <- factor(Dataset$gender, 
                         levels = c("male","female"), 
                         labels = c(1,2)) 

Dataset$class <- factor(Dataset$class, 
                         levels = c("positive","negative"), 
                         labels = c(0,1)) 

Dataset


install.packages("dplyr")

library(dplyr)

str(Dataset)
is.na(Dataset)
colSums(is.na(Dataset))
which(is.na(Dataset$age))
which(is.na(Dataset$gender))
which(is.na(Dataset$impluse))
which(is.na(Dataset$pressurehight))
which(is.na(Dataset$pressurelow))
which(is.na(Dataset$glucose))
which(is.na(Dataset$class))



Dataset


Dataset<-subset(Dataset,as.numeric(Dataset$impluse)>39& as.numeric(Dataset$impluse)<140)
dim(Dataset)

Dataset<-subset(Dataset,as.numeric(Dataset$pressurehight)>60& as.numeric(Dataset$pressurehight)<360)
dim(Dataset)
Dataset

meanvalueage <-mean(Dataset$age,na.rm=TRUE) 
meanvalueage 
Dataset[is.na(Dataset$age), "age"] <-meanvalueage 
Dataset
meanvaluepressurehight <-mean(Dataset$pressurehight,na.rm=TRUE) 
meanvaluepressurehight 
Dataset[is.na(Dataset$pressurehight), "pressurehight"] <-meanvaluepressurehight
Dataset

medianvalueage <-median(Dataset$age,na.rm=TRUE) 
medianvalueage 
Dataset[is.na(Dataset$Age), "age"] <-medianvalueage 
Dataset
medianvaluepressurehight<-median(Dataset$pressurehight,na.rm=TRUE) 
medianvaluepressurehight
Dataset[is.na(Dataset$pressurehight), "age"] <-medianvaluepressurehight
Dataset




modeage=names(sort(table(Dataset$age))) [1]
modeage 
Dataset[is.na(Dataset$age), "age"] <-modeage 
Dataset 
modegender=names(sort(table(Dataset$gender))) [1]
modegender 
Dataset[is.na(Dataset$gender), "gender"] <-modegender
Dataset 
modepressurehight=names(sort(table(Dataset$pressurehight))) [1]
modepressurehight 
Dataset[is.na(Dataset$pressurehight), "pressurehight"] <-modepressurehight
Dataset 

Dataset
Dataset<-na.omit(Dataset)
Dataset



sdage= sd(Dataset$age) 
print(sdage) 
sdimpulse= sd(Dataset$impulse) 
print(sdimpulse) 
sdpressurehight = sd(Dataset$pressurehight) 
print(sdpressurehight) 
sdpressurelow  = sd(Dataset$pressurelow ) 
print(sdpressurelow ) 
sdglucose =sd(Dataset$glucose) 
print(sdglucose)


hist(Dataset$age)

hist(Dataset$impluse)
hist(Dataset$pressurehight)
hist(Dataset$pressurelow)
hist(Dataset$glucose)


boxplot(Dataset$age)
boxplot(Dataset$impluse)
boxplot(Dataset$pressurehight)
boxplot(Dataset$pressurelow)
boxplot(Dataset$glucose)
boxplot(Dataset$class)


