#1st class 
2+3
6*7
#Logical values
2+2==4
# happy learning 
##happy learning
"happy learning"
x<-42
x
x/7
y = 100
y
y/5
x="happy learning"
x
x/7
sum(1,2 ,4)
sqrt(5)
rep(567,times=3)
rep(567,5)
rep("M Delighted", 4)

#vector
q<-c('a','b','c')
wc<-c('Suman','raman','kundan')
wc
g<-5:9
g
h<-7:10
h
i<-seq(5,9)
i
#wc1<-("suman","abcd")

j<-seq(5,9,0.5)
j
k=seq(9,5,-0.5)
k
k1=seq(9,10,0.5)
k1
learn<-c('you','me','R')
LEARN
learn
learn[1]
learn[3]
learn[5]
learn[1:3]
#reaplacing vector
learn[3]<-'sas'
learn
learn[4]<-'spas'
learn[5:10]<-learn ##How to replace mutliple element of vector in one go
a<-c(1,2,3)
b<-c(4,5,6)
a+b
a-b
a*b
#compare element
a==c(1,4,3)
m<-c(1,2,3,4,NA,7,9)
sum(m)
sum(m,na.rm = TRUE)
help(sum)
#matrix 
matrix(2,3,4)
sijio<-1:8
s<-matrix(sijio,c(2,4))
#matrix Access
s[2,]
s[1:2,]
s[,4]
s[,2:4]

#datafreame
#create variables and Vector
names<-c('Joel','chris','julie','mary','sprina')
names
percent<-c(85,88,92,95,89) #not correct in doc
percent
lunch<-c('biryani','chicken kabab','biryani','chicken kabab','veg pulao')
lunch
str(lunch)
yummy<-as.factor(lunch)
yummy
str(yummy)#factor page 33
#create data frame
joy<-data.frame(names,percent,yummy)
joy
joy$names
joy&percent
joy$yummy
joy$percent
joy[[3]]
joy[1]
joy[[1]]
joy[[2]]
joy[2]
##Access data frame  need to ask
joy[["yummy"]]

steve<-merge(x=infantry,y=targets)
steve
View(steve)
write.csv(steve,"G:/Suman/batch34/steve.csv")
print("suman")
