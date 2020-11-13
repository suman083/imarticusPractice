
cs2m <- read.csv("G:/Suman/batch34/cs2m.csv", stringsAsFactors=TRUE)

cs2m<-as.matrix(cs2m)
heatmap(cs2m,scale = 'none')
View(cs2m)

cd_hitmap <- read.csv("G:/Suman/batch34/project____circulatepls/cereals_data.csv", stringsAsFactors=TRUE)
cd_hitmap<-as.matrix(cd_hitmap)
cd_hitmap<-cd_hitmap[,4:10]
cd_hitmap
heatmap(cd_hitmap)
str(cd_hitmap)
cd_hitmap1<-apply(cd_hitmap, margin, ...)
cd_hitmap1
heatmap(cd_hitmap1)

