?sapply

#AvgHigh_F for july
lapply(Weather,"[",1,7) #list
sapply(Weather,"[",1,7) #vector

#AvgHigh_F for 4th quarter
lapply(Weather,"[",1,10:12) #list
sapply(Weather,"[",1,10:12) #matrix

#another ex
lapply(Weather,rowMeans)
sapply(Weather,rowMeans)
round(sapply(Weather,rowMeans),2) #<<Dev 1.Awesome!

#another ex
lapply(Weather,function(z) round((z[1,] -z[2,])/z[2,],2))
sapply(Weather,function(z) round((z[1,] -z[2,])/z[2,],2))

#<<Dev 2.Awesome!

#BTW : 
sapply(Weather,rowMeans,simplify = FALSE) #lapply
