#Replacing Missing Data: Deriving Values Method

#Expenses and profit 

#R - E = P
#E = R - P

fin[is.na(fin$Profit),]
fin[is.na(fin$Profit),"Profit"] <- fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Expenses"]
fin[c(8,42),]

fin[is.na(fin$Profit),"Expenses"] <- fin[is.na(fin$Profit),"Revenue"] - fin[is.na(fin$Profit),"Profit"]
fin[15,]
