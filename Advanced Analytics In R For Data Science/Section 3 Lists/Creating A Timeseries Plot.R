#Creating A Timeseries Plot

library(ggplot2)

p <- ggplot(data=util)

p + geom_line(aes(x=PosixTime,y=Utilization,
                  color=Machine), size=1.2) +
  facet_grid(Machine~.) +
  geom_hline(yintercept = 0.90,color="Gray",
             size=1.2,linetype=3) #90% threshhold hai toh add kr diya waha ek line taki jaldi analysis krlay

myplot <- p + geom_line(aes(x=PosixTime,y=Utilization,
                            color=Machine), size=1.2) +
  facet_grid(Machine~.) +
  geom_hline(yintercept = 0.90,color="Gray",
             size=1.2,linetype=3)
myplot

list_rl1$Plot <- myplot
list_rl1 #plot print krta h
summary(list_rl1)
str(list_rl1)
