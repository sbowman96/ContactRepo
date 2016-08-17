library(dplyr)

Frank.Company <- read.csv("C:/Users/sbowm/Desktop/R Contact Project/Frank Company.csv")
Company<-Frank.Company
Frank.Name <- read.csv("C:/Users/sbowm/Desktop/R Contact Project/Frank Name.csv")
Name<-Frank.Name
batch <- read.csv("C:/Users/sbowm/Desktop/R Contact Project/batch.csv")
Sent<-batch

attach(Company)
attach(Name)
                     
head(Name)  
head (Company)
summary(Name)
summary(Company)
names(Name)
names (Company)
names(Sent)
head (Sent)

Name<-Name%>% rename("Company"= CntcCompany)
Sent<-Sent%>% rename("Company"= Account)
Bulk<-full_join(Company,Name)
View(Bulk)
head(Bulk)  
summary(Bulk)
names(Bulk)
Sent1<-data.frame(Sent[ ,1])
head(Sent1)
View(Sent1)
names(Sent1)
Sent1<-Sent1%>% rename("Company"= Sent...1.)


Sent2<-semi_join(Bulk, Sent1, by = Company)




