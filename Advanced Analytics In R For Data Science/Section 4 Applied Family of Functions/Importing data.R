getwd()
setwd("/Volumes/M1 SSD/R prac/Advanced Analytics In R For Data Science/Section 4 Applied Family of Functions/Weather Data")
getwd()
#setwd("./Weather Data) . is current folder

#Read data

Chicago <- read.csv("Chicago-F.csv",row.names = 1) #now s.no will be replaced by 1st row
NewYork <- read.csv("NewYork-F.csv",row.names = 1) #now s.no will be replaced by 1st row
Houston <- read.csv("Houston-F.csv",row.names = 1) #now s.no will be replaced by 1st row
SanFrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1) #now s.no will be replaced by 1st row

#Check:
SanFrancisco
Houston
NewYork
Chicago

#these are df? :
is.data.frame(Chicago) #TRUE
#as all the data is in num lets convert it to matrix

Chicago <- as.matrix(Chicago)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)
#check
is.matrix(Chicago)

#Lets put them in list
Weather <- list(Chicago=Chicago,NewYork=NewYork,Houston=Houston,SanFrancisco=SanFrancisco)
Weather
