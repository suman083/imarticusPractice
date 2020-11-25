#Import files

cs2m <- read.csv("G:/Suman/batch34/Hypotheses Testing I & II_command sheet/cs2m.csv", stringsAsFactors=TRUE)

grades <- read.csv("G:/Suman/batch34/Hypotheses Testing I & II_command sheet/grades.csv", stringsAsFactors=TRUE)

#anovae
anovae <- read.csv("G:/Suman/batch34/Hypotheses Testing I & II_command sheet/anovae.csv", stringsAsFactors=TRUE)

#salescity
salescity <- read.csv("G:/Suman/batch34/Hypotheses Testing I & II_command sheet/salescity.csv", stringsAsFactors=TRUE)

#slr
slr <- read.csv("G:/Suman/batch34/Hypotheses Testing I & II_command sheet/slr.csv", stringsAsFactors=TRUE)

#one sample test
t.test(cs2m$Age, mu=40)

#paired sample test IF P<=0.05(ALPHA),Reject, if p>=0.05(alpha),Accept
t.test(grades$quiz1,grades$quiz2,alternative = "two.sided",mu=0,paired = TRUE)
t.test(grades$quiz1,grades$quiz2,paired = T)

#INDEPENDENT SAMPLE TEST assuming unequal variance 
t.test(cs2m$BP~cs2m$AnxtyLH)

###INDEPENDENT SAMPLE TEST assuming equal variance 
t.test(cs2m$BP~cs2m$AnxtyLH,var.equal=T)

##One Sample Proportion Test
prop.test(50,130,p=.30,alternative = "two.sided",conf.level = .95,correct = F)


#Two Samples Proportion Test
prop.test(c(10,22),c(40,50),alternative = "two.sided",conf.level = .95,correct = F)

##one way Anova
view(salescity)
#box plots Sales vs Cities

plot(sales~city,data = salescity,col="blue")
plot(sales~city,data = salescity,col=heat.colors(4))
results<-aov(sales~city,data=salescity)
summary(results)

results=aov(sales~city,data = sc)
summary(results)

TukeyHSD(results)


#Chi square test-> need to ask
#there is no association between Anxiety and Drug Reaction

chisq.test(cs2m$AnxtyLH,cs2m$DrugR)

#post hoc comparision -> the mean difference across group D&B  
TukeyHSD(results)

?"~"
  
