#install.packages("ggplot2")
library(ggplot2)
?qplot()

qplot(data=stats, x=Internet.users) #we dont have to say stats$Internet.users , we can but we should avoid it

qplot(data=stats, x=Income.Group,y=Birth.rate)

qplot(data=stats, x=Income.Group,y=Birth.rate,size=I(3))#for color or size etc use I like this

qplot(data=stats, x=Income.Group,y=Birth.rate
      ,size=I(3),colour=I("blue"))#for color or size etc use I like this
#color also works

qplot(data=stats, x=Income.Group,y=Birth.rate,geom="boxplot")

