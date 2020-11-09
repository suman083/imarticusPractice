##Group project for R
#Reading data set
cereals_data <- read.csv("G:/Suman/batch34/project____circulatepls/cereals_data.csv", stringsAsFactors=TRUE)
cd <- read.csv("G:/Suman/batch34/project____circulatepls/cereals_data.csv", stringsAsFactors=TRUE)
dim(cd)
str(cd)
summary(cd)

cd_calories=cd$calories
boxplot(cd_calories, col="red")
LB<-quantile(cd_calories,.25)-1.5*IQR(cd_calories)
LB
UB<-quantile(cd_calories,.75)+1.5*IQR(cd_calories)
UB
CD1<-cd_calories[cd_calories<LB | cd_calories>UB]
CD1
