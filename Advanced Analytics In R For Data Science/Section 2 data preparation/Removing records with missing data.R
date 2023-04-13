#Removing records with missing data

#we need to remove data in industry with missing data

#as these are imp data and we cant replace it

#always back up data

fin_backup <- fin

fin[!complete.cases(fin),]

fin[is.na(fin$Industry),]
fin[!is.na(fin$Industry),]

fin <- fin[!is.na(fin$Industry),] # rows removed