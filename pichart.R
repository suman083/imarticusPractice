
data1<- read.csv("G:/Suman/batch34/project____circulatepls/cereals_data1.csv", stringsAsFactors=TRUE)
view(data1)
install.packages("RColorBrewer")
library(RColorBrewer)




data1$mfrFlag <- as.numeric(!is.na(data1$calories))
pichartdata<-tapply(data1$mfrFlag , data1$mfr,sum)
pichartdata
pichartdata<-as.matrix(pichartdata)
pie(pichartdata[,1],main = " Manufacturer of cereal",col = rainbow(length(pichartdata)))

