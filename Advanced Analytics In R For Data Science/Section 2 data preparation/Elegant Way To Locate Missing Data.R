#Locate Missing Data

fin
head(fin,24)

complete.cases(fin) #vector if the rows are complete or not
fin[complete.cases(fin),] #only good rows

fin[!complete.cases(fin),] #gives only 6 rows because there are rows that dont have anything they are just empty (NA is not written) just a blank space

#to fix this we do this sanity check
#when we import data

fin <-read.csv("Data.csv",na.strings = c("")) #can put all values we want to replace as na
head(fin,24)
fin[!complete.cases(fin),]

#some <NA> has <> as they are factors