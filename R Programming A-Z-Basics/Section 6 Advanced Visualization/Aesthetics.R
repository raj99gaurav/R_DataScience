library(ggplot2)
#aes() - Aesthetics how data is map to geo layer
ggplot(data=movies, aes(x=CriticRating,y=AudienceRating)) # if we run this nothing happens bcz ggplot doesnt know how to bind it

#add geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + 
  geom_point()

#add color
ggplot(data=movies
       ,aes(x=CriticRating
            ,y=AudienceRating
            ,color=Genre)) + 
  geom_point()


#add Size
ggplot(data=movies
       ,aes(x=CriticRating
            ,y=AudienceRating
            ,color=Genre,size=Genre)) + 
  geom_point() #Warning message:Using size for a discrete variable is not advised. 

#add Size - better
ggplot(data=movies
       ,aes(x=CriticRating
            ,y=AudienceRating
            ,color=Genre,size=BudgetMillions)) + 
  geom_point() 