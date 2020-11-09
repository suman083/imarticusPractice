install.packages("readr")
library(readr)
slr <- read.csv("G:/Suman/batch34/R Markdown/slr.csv", stringsAsFactors=TRUE)

dim(slr)
str(slr)
summary(slr)
hist(slr$Sales,col="red")
hist(slr$Advt,col="blue")
