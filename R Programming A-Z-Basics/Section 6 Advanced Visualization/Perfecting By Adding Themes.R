#theme layer

o <- ggplot(data=movies,aes(x=BudgetMillions))
h<-o+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")
h

#add an axes label
h + 
  xlab("Money axis") + 
  ylab("Number of movies")

#label formatting
h + 
  xlab("Money axis") + 
  ylab("Number of movies") +
  theme(axis.title.x = element_text(color="DarkGreen",size=30),
        axis.title.y = element_text(color="Red",size=30))

#tick mark formatting
h + 
  xlab("Money axis") + 
  ylab("Number of movies") +
  theme(axis.title.x = element_text(color="DarkGreen",size=30),
        axis.title.y = element_text(color="Red",size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20))

?theme

#legend formatting
h + 
  xlab("Money axis") + 
  ylab("Number of movies") +
  theme(axis.title.x = element_text(color="DarkGreen",size=30),
        axis.title.y = element_text(color="Red",size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1))


#title of plot
h + 
  xlab("Money axis") + 
  ylab("Number of movies") +
  ggtitle("Movie Budget Distrution") +
  theme(axis.title.x = element_text(color="DarkGreen",size=30),
        axis.title.y = element_text(color="Red",size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color="Darkblue",
                                  size=40,
                                  family="Courier"))