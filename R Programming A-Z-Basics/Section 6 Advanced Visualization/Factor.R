#Data layer

getwd()
setwd("/Volumes/M1 SSD/R prac/R Programming A-Z-Basics/Section 6 Advanced Visualization")
getwd()

movies <- read.csv("Movie Ratings.csv")
head(movies)
colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

movies$Year <- factor(movies$Year)
movies$Genre <- factor(movies$Genre)

str(movies)

#changes to factor so we can use to group data using them