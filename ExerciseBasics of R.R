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
