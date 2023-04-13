#Replacing Missing Data: Median Imputation Method (Part 1)

#Emp and growth col

#we can just but a mean of emp and put it there but
#we will sort by same industry etc and then take median

fin[!complete.cases(fin),]
#1.
#mean(fin[,"Employees"],na.rm=TRUE) just to check mean of the col
median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE) #28

#always good idea to save these data 
median_empl_retail <- median(fin[fin$Industry=="Retail","Employees"],na.rm=TRUE) #28
median_empl_retail

fin[is.na(fin$Employees) & fin$Industry=="Reatil",]
fin[is.na(fin$Employees) & fin$Industry=="Reatil","Employees"] <- median_empl_retail
#check
fin[3,]

fin[is.na(fin$Employees),]
#2.
median(fin[fin$Industry=="Financial Services","Employees"],na.rm=TRUE) #80

median_empl_finserv <- median(fin[fin$Industry=="Financial Services","Employees"],na.rm=TRUE) #28
median_empl_finserv

fin[is.na(fin$Employees) & fin$Industry=="Financial Services",]
fin[fin$ID==332 & fin$Industry=="Financial Services","Employees"] <- median_empl_finserv
#check
fin[330,]
