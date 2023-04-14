#Lists in R

#Deliverable - a list with following :
#Character: Machine Name
#Vector: (min,mean,max) utilisation for the month (excluding unknown hours)
#Logical: has utilisation ever fallen below90%? TRUE/FALSE
#Vector: all hours wher utilisation is unknown (NA’s)
#Dataframe: For this machine 
#Plot: For all machines


#Importing data set
getwd()
setwd("/Volumes/M1 SSD/R prac/Advanced Analytics In R For Data Science/Section 3 Lists")
getwd()

util <- read.csv("dataset.csv")
head(util,12)
str(util)

util$Timestamp <- factor(util$Timestamp)
util$Machine <- factor(util$Machine)
str(util)

summary(util)

#Derive Utilization col
util$Utilization = 1-util$Percent.Idle
head(util,12)
