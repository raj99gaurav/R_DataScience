#Coordinates layer

#Todays : limits and zoom

m<- ggplot(data=movies,
           aes(x=CriticRating,y=AudienceRating,
               size=BudgetMillions,color=Genre))

m+geom_point()

m+geom_point() +xlim(50,100)+
  ylim(50,100)#Warning message:Removed 335 rows containing missing values

#Wont work well always

n <-ggplot(data=movies,aes(x=BudgetMillions))
n+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")
n+geom_histogram(binwidth = 10,aes(fill=Genre)
                 ,color="Black") +ylim(0,50)
#it cut out data which we dont want

#instead zoom:
n+geom_histogram(binwidth = 10
                 ,aes(fill=Genre)
                 ,color="Black")+
  coord_cartesian(ylim=c(0,50))

#improve chart 1:
w+geom_point(aes(size=BudgetMillions))+
  geom_smooth() + facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))
