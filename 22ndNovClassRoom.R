cs2m <- read.csv("G:/Suman/batch34/cs2m.csv", stringsAsFactors=TRUE)
install.packages("gmodels")
library(gmodels)
CrossTable(cs2m$Prgnt,cs2m$AnxtyLH)
##se= sd/sqrt(n)
se<-18.8/sqrt(30)
se
##x-u/

(37.77-40)/se

t.test(cs2m$Age,mu=40)
t.test(cs2m$Age,mu=40,conf.level = .80)
#BP ,mu=173, p_value=8.1   p-value = 8.129e-12
t.test(cs2m$BP,mu=173)
#p value almost zero
t.test(cs2m$BP,mu=120)
# p-value = 0.08928 acceppted

#2nd type null 

grades <- read.csv("G:/Suman/batch34/grades.csv", stringsAsFactors=TRUE)
dim(grades)
view(grades)
t.test(grades$quiz1,grades$quiz2,paired = T)
mean(grades$quiz1)
mean(grades$quiz2)
#
t_critical=TINV(0.05,df=104)


a=table(cs2m$AnxtyLH)
a
barplot(a,names.arg = c("Low","High"),col=c("green","red"),
        xlab = "Anxiety level",
        ylab="Counts",
        main = "Barplot of Anxiety")
ss=cs2m[,c(1,2,3)]
str(ss)
library(psych)
pairs.panels(ss)
