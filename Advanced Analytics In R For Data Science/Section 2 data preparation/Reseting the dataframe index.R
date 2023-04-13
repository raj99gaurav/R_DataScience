#Reseting the dataframe index

#approach 1 :
rownames(fin) <- 1:nrow(fin)

#approach 2:
fin <- fin_backup
fin[!complete.cases(fin),]
fin[is.na(fin$Industry),]
fin[!is.na(fin$Industry),]
fin <- fin[!is.na(fin$Industry),]
fin

#2
rownames(fin) <- NULL
tail(fin)
