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
boxplot(CD1)

#Column 2 -> Error in cd_calories$mfr : $ operator is invalid for atomic vectors
table(cd$mfr)
str(cd$mfr)
#all looks good

#Column 3
str(cd$type)
#all fine

#Column 4
str(cd$calories)
cd$calories
table(cd$calories)
barplot(table(cd$calories))
#data id more or less symmetrical we can go for mean or median

#Column 5 - asymetrical data should go for median
str(cd$protein)
barplot(table(cd$protein))

#column 6 - asymetrical data should go for median
str(cd$fat)
barplot(table(cd$fat))
summary(cd$fat)

#Column 7 -> high values at one end
str(cd$sodium)
barplot(table(cd$sodium))
summary(cd$sodium)

#column 8 -> higher concentration on left side
str(cd$fiber)
table(cd$fiber)
barplot(table(cd$fiber))
summary(cd$fiber)

#Column 9 -> 1 na 
str(cd$carbo)
table(cd$carbo)
barplot(table(cd$carbo))
summary(cd$carbo)

#Column 10 -> symetrical;
str(cd$sugars)
table(cd$sugars)
barplot(cd$sugars)
summary(cd$sugars)


##column 11->median 
str(cd$potass)
table(cd$potass)
barplot(table(cd$potass))
summary(cd$potass)

##Column 12-> mean symmetrical
str(cd$vitamins)
table(cd$vitamins)
barplot(table(cd$vitamins))

##Column 13-> mean can be used
str(cd$shelf)
table(cd$shelf)
barplot(cd$shelf)
summary(cd$shelf)

##column 14-> median
str(cd$weight)
table(cd$weight)
barplot(table(cd$weight))
summary(cd$weight)

##Column 15-> median
str(cd$cups)
table(cd$cups)
barplot(table(cd$cups))  
summary(cd$cups)

##Column 16-> symetrical
str(cd$rating)
table(cd$rating)
barplot(cd$rating)
summary(cd$rating)

library(psych)
hist(cd)

## Subset to show calories per weight
View(cd)

wt_cal<-cd[,c(1,4,14)]
wt_cal
hist(wt_cal)
install.packages("ggplot2")

### Word cloud 
install.packages("tm")
library(tm)
install.packages("wordcloud")
library(wordcloud)
wt_cal
Corpus<-Corpus(VectorSource(wt_cal$name))
View(Corpus)

#text cleaning exercises
Corpus<-tm_map(Corpus,content_transformer(tolower))
##remove number 
#Corpus<-tm_map(Corpus,removeNumbers)
#remove english common stopwords
Corpus<-tm_map(Corpus,removeWords,stopwords("english"))
#remove punctuation 
Corpus<-tm_map(Corpus,removePunctuation)
tdm<-TermDocumentMatrix(Corpus)
m<-as.matrix(tdm)
v<-sort(rowSums(m),decreasing = TRUE)
d<-data.frame(word=names(v),freq=v)
wordcloud(d$word,d$freq,random.order = FALSE,rot.per = 0.3,scale = c(4,.5),max.words = 201,colors =brewer.pal(8,darken(10,0.1,"combined")))
