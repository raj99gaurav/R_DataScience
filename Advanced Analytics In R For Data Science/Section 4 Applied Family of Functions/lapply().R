?lapply #apply over a list or vector
#lapply returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X

Chicago
#lets transpose it
t(Chicago)
Weather

#if we wanted to transpose weather it will be a long 

lapply(Weather,t) #t function
mynewlist <- lapply(Weather,t)
mynewlist

#ex 2
Chicago
#rbind(Chicago,NewRow=1:12)
#lets add a new row on all cities in weather
lapply(Weather,rbind,NewRow=1:12)

#rowMeans
#colMeans
#rowSums
#colSums 
#useful func to rem with lapply

#ex3:
?rowMeans(Chicago) #identitical to apply(Chicago,1,mean)
lapply(Weather,rowMeans)
  #nearlt dev 1 but there even better way

