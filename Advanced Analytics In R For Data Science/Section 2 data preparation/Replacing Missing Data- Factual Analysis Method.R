#Replacing Missing Data: Factual Analysis Method

#In state we can restore it with 100% acc as we know the city
#also exp we can cal by rev - profit
getwd()
setwd("/Volumes/M1 SSD/R prac/Advanced Analytics In R For Data Science/Section 2 data preparation")
fin[!complete.cases(fin),] 

#state col

fin[is.na(fin$State),]
#1.NY
fin[is.na(fin$State) & fin$City == "New York",]
fin[is.na(fin$State) & fin$City == "New York","State"] <- "NY"
#check:
fin[c(11,377),] #new york ki na rows thi yeh
fin[!complete.cases(fin),] #NY wali nhi ha ab

#2.CA
fin[is.na(fin$State) & fin$City == "San Francisco","State"] <- "CA"
#check:
fin[c(82,265),] 
fin[!complete.cases(fin),]

