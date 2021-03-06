x <- 23L #Atomic vector of type integer
typeof(x)
x

v1 <- c(10,12,13,14,15)
v2 <- c(1,2,3,4,5)
add<- v1+v2
min<- v1-v2
mul<- v1*v2
median(v1)
mean(v1)
range(v1) 
typeof(range(v1))
var(v1)
cor(v1,v2)
set(v1,v2)

list.data<- list(1,'orange',TRUE)
print(list.data)
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)

# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[3])

# Access the list element using the name of the element.
print(list_data$A_Matrix)


# Add element at the end of the list.
list_data[4] <- "New element"
print(list_data[4])

# Remove the last element.
list_data[4] <- NULL

# Print the 4th Element.
print(list_data[4])

# Update the 3rd Element.
list_data[3] <- "updated element"
print(list_data[3])

# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)

# Print the merged list.
print(merged.list)

# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)

list.with.names <- list(a=c(1,3,5),b= c(7:10),c= c('pt','r','ff'))
list.with.names

arr<- array(c(1,2,3,4,5,6,7),dim=c(2,2))
arr

colnames <- c('c1','c2','c3')
rownames <- c('r1','r2','r3')
arr1 <- array(c(1,2,3,4,5,6,7,8,9),dim=c(3,3),
              dimnames=list(rownames,colnames))
arr1
?apply
result <- apply(arr1,c(2),sum) #columnwise sum
result
result2 <- apply(arr1,c(1),sum) #rowwise sum
result2

x<- c(11,12,13,14,15,16,17)
x[1]
x[c(3,1)]
x[c(2.7,2.4)] #real no trucate to integer
x[-6]        #skip 6th number
x[-c(6,3)]  #skip 3rd and 6th no.
x[c(TRUE,TRUE,FALSE, TRUE,FALSE)] #Default true 
x[x>13] #based on condition
x[] #useful for 2 or higher dimension
x[0]
#matrix row wise
m<- matrix(c(5:16),nrow=3 ,byrow=TRUE)
m
colnames <- c('c1','c2','c3','c4')
rownames <- c('r1','r2','r3')
resultm <- matrix(c(5:16),nrow=3 ,byrow=TRUE,
                  dimnames=list(rownames,colnames))
resultm

#Datafraes are list of vector of equal length
#additional attribute rownames()
#usually created using read.csv() and read.table()
#can be created with data.frame()
#rolnames are usually 1...n , find no of rows and colms wit nrow(df) adn ncol(df)

subj<- c("physics","math","English")
percentage<- c(95,85,87)

student_df<- data.frame(subj,percentage)
student_df
str(student_df) #to get structure
summary(student_df)

#missing valuesare denoted by Na or NaN
#is.na() is used to test  if object in NA
#is.nan() is used to test for NaN
#NA valuecan be integer NA ,character NA, etc.
x <- c(2,3,5,7,NA,3)
is.na(x) #true
is.nan(x) #false

y <- c(2,3,5,7,NaN,3)
is.na(y) #true
is.nan(y) #true

#missing values
# if large no of observation/datapoint delete missing values wile model building
#if particular variable have more missing value than rest of variable, delete tht variable
#imputation with mean/median/mode
library(Hmisc)
impute(BostonHousing$ptratio,mean)
impute(BostonHousing$ptratio,median)
impute(BostonHousing$ptratio,20)
BostonHousing$ptratio[is.na(BostonHousing$ptratio)]<- mean(BostonHousing$ptratio,na.rm=T)
#Imputatio of categorical variables
#mode imputation is one method but introduces bias
#treat missing value as seperate cateogory, use them as different level - simple method



#Apply Family
#any function can be passed into apply()
#can be used for input list, matrix or array and apply function
#Syntax::apply(x,margin,function)
#margin=1: appy manipulation on rows
#margin=2: apply manipulation on columns
mymatrix<- matrix(1:15,5,6)
mymatrix
apply(mymatrix,1,sd)

lapply(list(1:20),median)#retun list
sapply(list(1:20),median)#return vector
#tapply(x, index,function=NULL) #function applied to each element group by index
ages<- c(25,25,69,10)
location<-c('rural','urban','rural','urban')
tapply(ages,location,mean)
# vapply - similar to sapply but need to mention what type of data you require
vapply(list(1:20),sum,numeric(1))
#if your function returs more than one numeric 
#value then Fun.value=numeric(1) will return error