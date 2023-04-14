#Adding your own functions with in apply family

lapply(Weather,rowMeans)
lapply(Weather,function(x) x[1,])#anything btw function(x) # body of func)
lapply(Weather,function(x) x[5,])
lapply(Weather,function(x) x[,12])

lapply(Weather,function(z) z[1,] -z[2,])
lapply(Weather,function(z) round((z[1,] -z[2,])/z[2,],2))
 #dev 2 : temp fluctions . will improve