x <- rnorm(5)
x

#Method 1 : R specific prog loop
for(i in x){
  print(i) #here i is x[1] the whole thing
}

#Method 2
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#Method 3 : conventional prog loop
for(j in 1:5){
  print(x[j]) # where j is 1 2 3 4 5
}
 
#-------- vectorized vs devectorized(convenrtional way)

N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach - faster in R because
#R high-level programming language and things like this vectorized operations and function
#delegating these cal to programming languages like C and fortran in the
#background so in de vectorized it needs to do multiple deligation for N times but in verctorized it has to tell them once
c <- a*b

#De-Vectorized approach - slower
d <- rep(NA,N) #Empty vector
for(i in 1:N){
  d[i]<-a[i] *b[i]
}
d
