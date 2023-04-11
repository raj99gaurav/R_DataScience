#Vector -> array of R but it starts with index 1

#we can have numeric vector,character vector ( "7" , "Ab" ,"ABC" are valid)

#A number or character in R is also stored as a vector of length 1

#Everything in R is a vector

MyFirstVector <- c(3,45,56,732)
MyFirstVector

is.numeric(MyFirstVector) #TRUE
is.integer(MyFirstVector) #FALSE -> as by default R stores int as double
is.double(MyFirstVector) #TRUE

V2 <- c(3L,12L,243L,0L) # Adding L to make it int
is.numeric(V2) #TRUE
is.integer(V2) #TRUE

V3 <- c("a","b23","hello")
V3
is.character(V3) #TRUE
is.numeric(V3) #FALSE

V4 <- c("a","b23","hello",7) #num to char is easy and is done by R
V4
is.character(V4) #TRUE
is.numeric(V4) #FALSE

# otherways to create vector
seq() # sequence is like ':'
rep() #replicate

seq(1,15) # 1:15
seq(1,15,2) #last parameter is a step

z <- seq(1,15,4)
z

rep(3,50)
d <- rep(3,50)
d

rep("a",5)

x<-c(80,20)
y <- rep(x,5)
y
