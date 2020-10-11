mymatrix<-matrix(1:40,nrow=8,ncol = 5)
mymatrix
#apply(mymatrix, 1, mean)
apply(mymatrix,1,mean)
apply(mymatrix,2,mean)
apply(mymatrix,1,sum)

##lapply-- list input list output
mylist<-list(1:5,20:22,1:100)
mylist
l<-lapply(mylist,sd)
class(l)

##sapply 