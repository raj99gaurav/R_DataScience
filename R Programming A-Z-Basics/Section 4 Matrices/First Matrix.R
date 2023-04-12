#Matrices -> 2D arrays kinda A[ROW,COL]

#Rows are rep as [1,] [2,] [3,] and col as [,1] [,2] [,3]

Salary
Games
MinutesPlayed

#rm in rbind is used to remove the vectors after being used

#matrix() -> takes a vectors and fills it col by col it isnt
#used that often as mostly we dont create a matrix from vectors
?matrix()
my.data <- 1:20
my.data

A <- matrix(my.data,4,5) #a*b =length of matrix so 4*5 = 20
A
A[2,3]

B <- matrix(my.data,4,5,byrow=T)
B
B[2,5]


#rbind() -> vector1 to row1, vector 2 to row 2 etc vectors should be so same length
r1 <- c("I","am","happy")
r2 <- c("what","a","day")
r3 <- c(1,2,3)
c <- rbind(r1,r2,r3)
c

#cbind() -> vec1 to col1 etc
c1 <- 1:5
c2 <- -1:-5
d <- cbind(c1,c2)
d
