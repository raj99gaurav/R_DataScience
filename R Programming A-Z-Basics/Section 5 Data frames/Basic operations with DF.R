stats[1:10,] #subsetting
stats[3:9,]
stats[c(4,100),]

#remember how the [] work :
stats[1,]
is.data.frame(stats[1,]) #True so we dont need to do drop = F
stats[,1]
is.data.frame(stats[,1]) #False so
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

#multiply col
head(stats)

stats$Birth.rate * stats$Internet.users
#also + - / sab

#add col
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

#test of knowledge
stats$xyz <- 1:5 #no error why?

#vector 1. to 5 was recycled

stats$xyz <- 1:4 # error why?

#because it wasnt a multiple of 195