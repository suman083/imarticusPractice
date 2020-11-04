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
