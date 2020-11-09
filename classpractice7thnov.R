#classpractice7thnov
a<-grades[,c(13,18,19)]
pairs.panels(a)
a
names(grades)
colnames(grades)
variable.names(grades)
str(cs2m)
cs2m$Prgnt<-as.numeric(cs2m$Prgnt)
cs2m$AnxtyLH<-as.numeric(cs2m$AnxtyLH)
cs2m$DrugR<-as.numeric(cs2m$DrugR)
str(cs2m)
View(cs2m)
m=as.matrix(cs2m)
View(m)
heatmap(m)
m1=as.matrix(mtcars)
heatmap(m1,col=topo.colors(100))
heatmap(m1,col=rainbow(5))
?mtcars
help(mtcars)
View(mtcars,12)

#######combining two subet 

ethnicity_wb <- subset(grades, ethnicity == 4 | ethnicity == 5)
head(ethnicity_wb)

filter(grades, ethnicity == 4 | ethnicity == 5)

ethnicity_both=subset(grades,c(ethnicity==4,ethnicity==5))
ethnicity_both
##ethnicity_both

ethnicity_bth<- subset(grades, ethnicity == 4 || 5)
ethnicity_bth
ethinicity_both45<-subset(grades,ethnicity)

ethnicity_bth1<- subset(grades, ethnicity == 4:5)
ethnicity_bth1
##To see all data sets default
datasets::

data<-c(88,95,NA,76,69,78,NA,70,68)
data
#find new
mean(data)
mean(data,na.rm = T)
str(data)
summary(data)
median(data)
median(data,na.rm =T)
sd(data)
is.na(data) #logical operator
data
!is.na(data)
data[!is.na(data)]
View(imp.csv)
###missing value
dim(imp)
str(imp)
summary(imp)
##if valiable is cataogrichal go for mode 
summary(imp)
imp$variable3<-as.factor(imp$variable3)
summary(imp)
table(imp)

mean(imp$variable1)
mean(imp$variable1,na.rm = T)
imp$variable1[is.na(imp$variable1)]<-mean(imp$variable1,na.rm =T)
imp$variable1
hist(imp$variable2)
median(imp$variable2)
median(imp$variable2,na.rm = T)
imp$variable2[is.na(imp$variable2)]<-median(imp$variable2)
install.packages("VIM")

library(VIM)
imp<-kNN(imp)
View(imp)

p<-c(sample(60:100,20),15,23,150,168)
boxplot(p,col = "red")
LB<-quantile(p,0.25)-1.5*IQR(p)
LB
UB<-quantile(p,0.75)+1.5*IQR(p)
UB
p<-p[p>LB & p<UB]
boxplot(p)
boxplot(p[p>LB & p<UB])
library(psych)
p
q<-c(sample(60:100,20),15,23,150,168)
q
LB<-quantile(q,0.25)-1.5*IQR(q)
LB
UB<-quantile(q,0.25)+1.5*IQR(q)
q[q>UB]<-UB
q[LB]<-LB

str(framingham)
boxplot(framingham)
framingham <- read.csv("G:/Suman/batch34/remissingvalues/framingham.csv", stringsAsFactors=TRUE)
  
LB<-quantile(framingham$BMI,0.25,na.rm=T)-1.5*IQR(framingham$BMI,na.rm=T)
LB
UB<-quantile(framingham$BMI,0.75,na.rm=T)+1.5*IQR(framingham$BMI,na.rm=T)
UB
boxplot(framingham$BMI,col = "red")
framingham$BMI[framingham$BMI>UB]<-UB
framingham$BMI[framingham$BMI]<-LB
boxplot(framingham$BMI)
