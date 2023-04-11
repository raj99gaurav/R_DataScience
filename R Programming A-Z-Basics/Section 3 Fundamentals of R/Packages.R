Packages are collections of R functions,data and
complied code in a well defined format. 
The directory where packages are stores is called the library

#CRAN -> The Comprehensive R Archive Network
#CRAN where most packages come from

install.packages("ggplot2")
#we cant access anything yet as we havent activated it yet
?qplot()
?ggplot()
?diamonds()

#activate

library(ggplot2)
?qplot()
?ggplot()
?diamonds()

qplot(data=diamonds,carat,price,
      colour=clarity,facets=.~clarity)