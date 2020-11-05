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
j=rename(j,c(DrugR='Reaction', Prgnt='Pregnent'))
variable.names(j)
names(j)

##using
names(j)[5]="Anxiety"
names(j)[2]="Colesterol"
names(j)

##arrange ascending descending
cs2m_asce<- arrange(cs2m,age)
head(cs2m_asce)
rlang::last_error()

