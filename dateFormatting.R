dt<-365
class(dt)<-"Date"
dt
dt<--365
class(dt)<-"Date"
dt
## creating date and type variable
dt1<-as.Date(365,origin=as.Date("1990-01-02"))
dt2<-as.Date(-365,origin = as.Date("1990-10-02"))
dt2
#Exctracting date , year or moth from date variable
year<-format(dt1,"%Y")
class(year)
year<-as.numeric(year)
class(year)
format(dt1,"%y")
format(dt1,"%B")
format(dt1,"%b")
format(dt1,"%d")
mymonth<-format(dt2,"%m")
format(dt2,"%W")


#charactor to date function
dt<-as.Date("1/1/2000",format="%d/%m/%Y")
dt
class(dt)
myvar<-"01Jul2016"
class(myvar)
dt3<-as.Date(myvar,format = "%d%b%Y")
dt3
class(dt3)
myvar2<-"01-05-2020"
dt4<-as.Date(myvar2,format="%d-%m-%Y")
dt4

#compare date
dt1>dt2
dt3>dt4
dt==dt2
