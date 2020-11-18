
data1<- read.csv("G:/Suman/batch34/project____circulatepls/cereals_data1.csv", stringsAsFactors=TRUE)
view(data1)


##df %>% 
  #filter(!is.na(data1$calories)) %>% 
  #group_by(data1$mfr) %>% 
  #count()

data1$mfrFlag <- as.numeric(!is.na(data1$calories))
pichartdata<-tapply(data1$mfrFlag , data1$mfr,sum)
pichartdata
as.matrix(pichartdata)
