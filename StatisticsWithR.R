dim(cs2m)
str(cs2m)
#barplot() for categorical data
#2 steps (1)counts each level by 'table' command (2)bar plot
a=table(cs2m$AnxtyLH)
a
barplot(a,names.arg = c("Low","High"),col=c("green","red"),
        xlab = "Anxiety levels",
        ylab="Counts",
        main="Bar Plot of Anxiety")
#for all continious columns of a variables:
ss=cs2m[ ,c(1,2,3)]
str(ss)
 library(psych)
pairs.panels(ss)
