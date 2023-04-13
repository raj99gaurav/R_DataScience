#Aesthetics layer - very imp topic

r <- ggplot(data=movies
    ,aes(x=CriticRating,y=AudienceRating)) 
r + geom_point()

#add color

#1.Mapping (what we have done so far) to a variable
r + geom_point(aes(color=Genre))

#2.Setting to a name or value
r + geom_point(color="Dark Green")

#ERROR :
r + geom_point(aes(color="Dark Green")) # R thinks we are mapping it to a variable

#1.Mapping
r + geom_point(aes(size=BudgetMillions))
#2.setting
r +geom_point(size=10)
#ERROR
r+geom_point(aes(size=10))
