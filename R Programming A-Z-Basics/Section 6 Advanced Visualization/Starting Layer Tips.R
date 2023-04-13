#back to aes layer

t <- ggplot(data=movies,aes(x=AudienceRating))
t + geom_histogram(binwidth = 10,
                   fill="White",color="Blue")

#another way overrriding aes
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill="White",color="Blue")

#>>>4th chart


#which way to do if always x is same use 1 otherwise 2

#use 2 when you want to explore dataset
t + geom_histogram(binwidth = 10,
                   aes(x=CriticRating),
                   fill="White",color="Blue",
                   )

#>> 5th chart