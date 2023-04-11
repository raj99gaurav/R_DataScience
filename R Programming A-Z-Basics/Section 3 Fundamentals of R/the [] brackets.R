

x <- c(1,123,534,13,14) #combine
y <- seq(201,250,11) #sequence
z <- rep("Hi!",3) #replicate

#How to access individual ele

w <- c("a","b","c","d","e")
w

w[1]
w[-1] #expect 1
w[-3] #expect ele at 3

v<-w[-3]
v

w[1:3]
w[3:5]

w[c(1,3,5)] #elements at 1,3,5
w[c(-2,-4)] #elements expect 2,5

-3:-5
w[-3:-5] #elements expect 3,4,5
w[1:2]

#in r we dont often need to access indivial elements using [] that often