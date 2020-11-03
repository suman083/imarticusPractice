add<-3+4
add
4*8
rep("I HAVE LEARNT R ",3)

dear<-c('Bangalore', 'Kolkata', 'Mumbai')
dear
dearer<-c(84,65,39)
dearer
dearest<-c(101:107)
dearest
dear[3]
dear[4]<-'Chennai'
dear
dear[c(2,4)]
d<-c(4,5,7)
h<-c(2,3,4)
d*h
dearer==c(85,65,38)
k<-c(3,8,NA,9)
sum(k)
sum(k,na.rm = TRUE)
mat<-matrix(1,2,2)
mat
mat2<-matrix(c(1:6),2,3)
mat2
w<-c(1:6)
mat3<-matrix(w,2,3)
mat3
mat4<-matrix(seq(1:6),2,3)
mat4
mat5<-matrix(1,2,2)
mat5
names<-c('Alberic', 'John', 'Steve', 'Chris')
names
midterm<-c(87, 89, 93, 95)
final<-c(92, 94, 95, 98)
result<-data.frame(names,midterm,final)
result
result$names
result$midterm
result$final
tests<-merge(merge1,merge2)
tests
write.csv(tests,"G:/Suman/batch34/tests.csv")
View(tests)
