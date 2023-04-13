#Geo layer

p <- ggplot(data=movies
            ,aes(x=CriticRating
                 ,y=AudienceRating
                 ,color=Genre,size=BudgetMillions)) 
# ^ a new obj is created so to add new obj we use +
p

#points
p + geom_point()

#lines
p + geom_line()

#multiple layers
p + geom_point() + geom_line() #lines top layer below that points
p + geom_line() + geom_point() #points top layer below that lines