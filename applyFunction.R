mymatrix<-matrix(1:40,nrow=8,ncol = 5)
mymatrix
#apply(mymatrix, 1, mean)
apply(mymatrix,1,mean)
apply(mymatrix,2,mean)
apply(mymatrix,1,sum)

##lapply-- list input list output
mylist<-list(1:5,20:22,1:100)
mylist
l<-lapply(mylist,sd) #retunr list
class(l)

##sapply 
s<- sapply(mylist,sd) # returns vector
class(s)

##tapply
myvar11 <- c(10,12,18,32)
myage11 <- c('M','F','F','F')
tapply(myvar11,myage11,mean)

mtcars
tapply(mtcars$hp,mtcars$gear,median)
