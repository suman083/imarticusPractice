#Add 3 to 7, multiply 4 and 8,
a=3+7
a
b=4*8
b
# 2	Test logical statements 12 > 18 and 12+18 = 40 
12>18
12+18==40
40=12+18
c=12+18
c==40
# 3	Type I HAVE LEARNT R 3 times
rep("I HAVE LEARNT R",3)

# Create a vector name dear having 3 items Bangalore, Kolkata, Mumbai
dear<-c('Banglore','kolkata','mumbai')

#Create a vector name dearer having 3 items 84, 65, 39
dearer<-c(84,65,39)
#Create a vector name dearest having numbers from 101 to 107
dearest<-c(101:107)
#7	Access the third item in vector dear
dear[3]
# 8	Add new city, Chennai at 4th place in vector dear
dear[3]<-'chennai'
dear[3]
dear[3]<-'mumbai'
dear[4]<-'chennai'
#Access 2nd & 4th item in vector dear
dear[2]
dear[4]

# 10	Create a vector name d having numbers 4, 5, 6 and another vector h having numbers 2, 3, 4. Multiply vector d with h. 


d<-c(4,5,6);
h<-c(2,3,4)
k=d*h
k

# 11	Check numbers 84, 65, 38 in vector dearer  
dearer==c(84,65,38)

# 12	Sum the values given in vector k, 3, 8, NA, 9
k<-c(3,8,NA,9)
sum(k)
sum(k,na.rm =TRUE)
# Create a matrix of order 2 by 2 having all numbers as 1
AB<-matrix(1,2,2)
ab
AB
# Say a vector w is having numbers 1, 2, 3, 4, 5, 6. Create a 2 by 3 matrix using this vector w
w<-matrix(c(1:6),2,3)
w
# Say a vector q is having numbers from 1 to 6. Create a matrix of the order 2 by 3
q<-matrix(seq(1:6),2,3)
q
tests<-merge(x=merge1,y=merge2)
View(tests)
names1<-c('Alberic', 'John', 'Steve', 'Chris')

#midterm (87, 89, 93, 95
midterm<-c(87,89,93,95)
final<- c(92, 94, 95, 98) 
result<-data.frame(names1,midterm,final)
result
cs2m <- read.csv("G:/Suman/batch34/cs2m.csv", stringsAsFactors=TRUE)
View(cs2m)
str(cs2m)
class(cs2m)
dim(cs2m)
summary(cs2m)
cs2m$Prgnt<-as.factor(cs2m$Prgnt)
cs2m$AnxtyLH<-as.factor(cs2m$AnxtyLH)
cs2m$DrugR<-as.factor(cs2m$DrugR)
#age 
hist(cs2m$Age,col = "red",
                xlab="Age",ylab = "Counts", main = "histogram of age")
hist(cs2m$Age,col = "red",xlab = "agreof ", ylab = "count",main = "histogram")
hist(cs2m$Age,col = "red")
install.packages("psych")
library(psych)
describe(cs2m$Age)
##Box plot 
boxplot(cs2m$Age)

b=c(21,22,20.5,22,23,24.7,25,31,27,26.5,125.3)
hist(b,col = "red")
boxplot(b,horizontal = T)
par(mfrow=c(1,2)) # mf - marginf from row
