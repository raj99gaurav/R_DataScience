#Handling date-times in r -still data prep as date isnt clear

#konsa format h kya pata

?POSIXct #universal for many things eg : date stamp in R
#Portable Operating System Interface - compatability btw OS

#stores time as sec from 1970


util$PosixTime <- as.POSIXct(util$Timestamp,format="%d/%m/%Y %H:%M") #when to put Y or y or H or M  h and m
head(util)

#Tips : how to reaarange col in dataset
util$Timestamp <- NULL
util <- util[,c(4,1,2,3)]
head(util)
