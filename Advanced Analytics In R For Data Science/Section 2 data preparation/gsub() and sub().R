#converting factor to non factor variable
getwd()
setwd("/Volumes/M1 SSD/R prac/Advanced Analytics In R For Data Science/Section 2 data preparation")

fin <-read.csv("Data.csv")
head(fin)
fin$Revenue <- factor(fin$Revenue)
fin$Expenses <- factor(fin$Expenses)
str(fin)

#sub() and gsub() - sub replaces first instance and gsub all

fin$Expenses <- gsub("Dollars","",fin$Expenses) #what to replace,replace with,where to search
head(fin)

fin$Expenses <- gsub(",","",fin$Expenses) #what to replace,replace with,where to search
head(fin)

str(fin) #expense is now a char


fin$Revenue <- gsub("$","",fin$Revenue) #$ wont get replaces as $ is special character in R
#so to do this we need to create an esc seq
fin$Revenue <- gsub("\\$","",fin$Revenue) #$ wont get replaces as $ is special character in R
fin$Revenue <- gsub(",","",fin$Revenue) #$ wont get replaces as $ is special character in R
head(fin)
str(fin)

#growth is not a factor we can still use gsub
fin$Growth <- gsub("%","",fin$Growth) #$ wont get replaces as $ is special character in R
head(fin)
str(fin)

#convert to num
fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)
str(fin)

summary(fin)
