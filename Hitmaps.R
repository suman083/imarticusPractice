
cs2m <- read.csv("G:/Suman/batch34/cs2m.csv", stringsAsFactors=TRUE)

cs2m<-as.matrix(cs2m)
heatmap(cs2m,scale = 'none')
