#Data Filters: is.na() for Missing Data

#fin$Expenses == NA # all NA 
#so we cant do fin[fin$Expenses == NA]

is.na() #tells here were na is present
fin[is.na(fin$Expenses),]
