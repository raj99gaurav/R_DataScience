head(stats)
head(mydf)

mergeddf <- merge(stats,mydf,by.x ="Country.Code",by.y = "Code") #left df,right df,merge col of df 1,col of df 2
head(mergeddf)
#country.code and code are same so it will appear once as we merged using it
#but same is not true for other cols so we will rm them

mergeddf$Country <- NULL

str(mergeddf)
tail(mergeddf)

