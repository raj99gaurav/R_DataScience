#Named vectors
Raj <- 1:5
Raj

#give names
names(Raj) <- c("a","b","c","d","e")
Raj
Raj["d"]
names(Raj)

#clear names
names(Raj) <- NULL
Raj

#-----

#Naming Matrix Dimensions 1
temp.vec <- rep(c("a","b","zZ"),each=3)
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

rownames(Bravo)

rownames(Bravo) <- c("How","Are","You")
Bravo

colnames(Bravo) <- c("X","Y","Z")
Bravo

Bravo["Are","Y"]
Bravo["Are","Y"] <- 0
Bravo

rownames(Bravo)

rownames(Bravo) <- NULL
Bravo
