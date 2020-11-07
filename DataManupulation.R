str(t)
summary(t)
## missinng values
dim(t)
t_complete=t[complete.cases(t),]
dim(t_complete)
install.packages(dplyr)
library(dplyr)
cs2m_mutate<-mutate(cs2m, Chlstrl_bp=Chlstrl/BP)
head(cs2m_mutate)
head(cs2m)
cs2m_1<-cs2m
##Create new variable by another method
cs2m_1$chlst_bp<-cs2m_1$chlstrl/cs2m_1$BP
View(mtcars)
View(cs2m)
##reshape
m=cs2m
j=m
dim(j)
install.packages("reshape")
library(reshape)
variable.names(j)
##j=rename(j,c(Reaction='DrugR', Pregnent='Prgnt'))
j=rename(j,c(DrugR='Reaction', Prgnt='Pregnent'))
variable.names(j)
names(j)

##using
names(j)[5]="Anxiety"
names(j)[2]="Colesterol"
names(j)

##arrange ascending descending
library(dplyr)
cs2m_asce<- arrange(cs2m,Age)
cs2m_asce1<-arrange
cs2m_asce1<-arrange
head(cs2m_asce)
##rlang::last_error()
View(grades)
View(grades$quiz1)
#sub set
grades1<-subset(grades,select = c(quiz1,gpa,final))
head(grades1)
View(grades1)
grades2<-select(grades,quiz1,gpa,final)
grades2
##apply columns mean
apply(cs2m,2,mean)
mean(cs2m)
mean(cs2m$BP)

##apply row mean
apply(cs2m,1,mean)
View(mtcars)
##average column
by(mtcars[ ,-2], mtcars$cyl, colMeans)
##tapply
tapply(cs2m$BP,cs2m$Chlstrl,mean)
tapply(grades$gpa,grades$percent,mean)
final_60<-subset(grades,final>60)
head(final_60)
boxplot(grades$final,main='final grade',col='red')
boxplot(final_60$final,main='final 60',col='red')

##compare correlation
cor.test(grades$gpa,grades$final)
cor.test(final_60$gpa,final_60$final)

##applying filter
cs2_m_21<-filter(cs2m,Age>20&Age<32)
cs2_m_21
##subset
cs2_m_211<-subset(cs2m,Age>19 & Age<32)
cs2_m_211
#create sub ethinicity=4
ethinicity_white<-subset(grades,ethnicity==4)
head(ethinicity_white)
boxplot(ethinicity_white$final,main='white eninicity',col='green')

##record final with sqrt final
grades$sqrtfinal<-sqrt(grades$final)
head(grades$sqrtfinal)

##compare his of final and sqrt final
hist(grades$final)
hist(grades$sqrtfinal)
## convert to catagorial variables
grades$catgryfinal<-ifelse(grades$final<60,yes="final<60",no="final>60")
head(grades)
table(grades$catgryfinal)

##Convert final into categories with increment of 5  cat command
grades$final_cat<-cut(grades$final,breaks = seq(40,75,5),labels=c("final1","final2","final3","final4","final5","final6","final7"))
head(grades)

#table command
table(grades$catgryfinal)
table(grades$final_cat)
library(readr)
install.packages("readr")
library(readr)
k<-read.csv("G:/Suman/batch34/cs2m.csv", stringsAsFactors=TRUE)
str(k)
summary(k$Age)
m=k
summary(m)
View(m)
##within command
m<-within(m,{
  agecat<-NA
  agecat[Age>=15 & Age<=25]<-'Low'
  agecat[Age>=26 & Age<=41]<-'Middle'
  agecat[Age>41]<-'High'
})
head(m,3)
##Convert ingethnicity into two categories category 1 = 1, 3& 5; category 2 = 2 & 4

grades$cateth<-grades$ethnicity
grades$cateth[grades$cateth==1|grades$cateth==3|grades$cateth==5]=1
grades$cateth[grades$cateth==2|grades$cateth==4]=2
View(grades)
head(grades)

##Take out 20% observations randomly from the file

sam<-sample(x=1:nrow(grades),size = 0.2*nrow(grades))
grade20<-grades[sam,]
head(grade20)
##all grade 20
grade20
##case
sam
##Summarize
library(psych)
summarise(cs2m,mean_age=mean(Age,na.rm = T),median_age=median(Age,na.rm = T))
