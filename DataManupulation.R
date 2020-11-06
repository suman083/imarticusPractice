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

##Convert final into categories with increment of 5
