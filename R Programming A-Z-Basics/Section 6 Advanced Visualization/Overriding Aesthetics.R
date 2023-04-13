#Aesthetics layer

q <- ggplot(data=movies
                ,aes(x=CriticRating
                     ,y=AudienceRating
                     ,color=Genre,size=BudgetMillions)) 

#add geom layer

q + geom_point()

#Overriding Aesthetics
#ex1
q + geom_point(aes(x=CriticRating))

#ex2
q + geom_point(aes(color=BudgetMillions))

q + geom_point() #q is same so same graph as soon as stop overrriding

#ex3
q + geom_point(aes(x=BudgetMillions)) #the lable is still old

q + geom_point(aes(x=BudgetMillions)) +
  xlab("BudgetMillions")

#ex4 - we didnt said aes so here we are setting instead of mapping
q + geom_line(size=1) + geom_point()