H<- c(20,12,70,55)
M<- c("delhi","beijing","tokyo","nyc")
barplot(H,xlab="Month",ylab="Happiness index",col="red",
        names.arg=M,main="Happiness Index",border="red")
#horizontal
barplot(H,xlab="Month",ylab="Happiness index",col="red",
  ,horiz=TRUE,      names.arg=M,main="Happiness Index",border="red")
#stacked bar plot 
counts<- table(mtcars$vs,mtcars$gear)
barplot(counts,main="car distribution by Gears and VS",
        xlab="No of Gears",col=c("darkblue","red"),
        legend=rownames(counts))
#Grouped bar chart
barplot(counts,main="car distribution by Gears and VS",
        xlab="No of Gears",col=c("darkblue","red"),
        legend=rownames(counts),beside=TRUE)

#Histogram
#Plotting distribution of Airpassener data
hist(AirPassengers,main="histogram of Airpassengers",
     xlab="Passengers",border="red",col="blue",
     xlim=c(100,700),breaks = 20)
summary(mtcars)
cor(mtcars$mpg,mtcars$cyl)
mtcars
#boxplot
boxplot(mpg~cyl,data=mtcars)


