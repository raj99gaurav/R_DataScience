v <- ggplot(data=movies,aes(x=BudgetMillions))
v+geom_histogram(binwidth=10,aes(fill=Genre),
                 color="Black")
#currently hard to read

#facets : lots of charts
v+geom_histogram(binwidth=10,aes(fill=Genre),
                 color="Black")+
  facet_grid(Genre~.) #genre is rows and in col we want nothing
v+geom_histogram(binwidth=10,aes(fill=Genre),
                 color="Black")+
  facet_grid(Genre~.,scales="free")

#scatterplots :

w <-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,color=Genre))
w+geom_point(size=3)
w+geom_point(size=3)+facet_grid(Genre~.)

w+geom_point(size=3)+facet_grid(.~Year)

w+geom_point(size=1)+facet_grid(Genre~Year)

w+geom_point(size=3)+
  geom_smooth() + facet_grid(Genre~.)

w+geom_point(aes(size=BudgetMillions))+
  geom_smooth() + facet_grid(Genre~.)
#>>1 but we will still improve as its from - to +