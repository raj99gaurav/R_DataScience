#Subsetting 

x <- c("a","b","c","d","e")
x
x[c(1,5)]
x[1]


Games
Games[1:3,6:10]

Games[c(1,10),]
Games[,c("2008","2009")]

Games[1,] #it isnt matrix but a vector

is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,5] #vector

#R thinks as these are not 2D so we are looking for a vector so it returns vector

#How to fix that
Games[1,,drop=F]
is.matrix(Games[1,,drop=F])

Games[1,5,drop=F]
