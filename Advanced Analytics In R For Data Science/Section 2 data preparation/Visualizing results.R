#Visualizing results
library(ggplot2)

#A scatterplot classified by industry showing revenue, expenses, profit
p <- ggplot(data=fin)
p +geom_point(aes(x=Revenue,y=Expenses,
                 color=Industry,size=Profit))

#A scatterplot that includes industry trends for the expenses~revenue relationship
d <- ggplot(data=fin,aes(x=Revenue,y=Expenses,
                         color=Industry))
d +geom_point() +
  geom_smooth(fill=NA,size=1.2)

#BoxPlots showing growth by industry
f <- ggplot(data=fin,aes(x=Industry,y=Growth,
                         color=Industry))
f + geom_jitter()+
  geom_boxplot(size=1,alpha=0.5,outlier.color = NA)