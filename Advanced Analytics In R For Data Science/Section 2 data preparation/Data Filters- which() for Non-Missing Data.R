#Filtering : using which() for non missing data

head(fin)

fin[fin$Revenue == 9746272,] #all rows with rev 9746272
#we have random rows here why?
#because fin$Revenue == 9746272 has NA values
#so when we compare anything to NA we get NA so R doesnt know what to do

#sol
which(fin$Revenue == 9746272)
#which gives true indices 
fin[which(fin$Revenue == 9746272),]
