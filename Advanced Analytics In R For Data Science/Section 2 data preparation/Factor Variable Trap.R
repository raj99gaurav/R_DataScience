getwd()
setwd("/Volumes/M1 SSD/R prac/Advanced Analytics In R For Data Science/Section 2 data preparation")

fin <-read.csv("Data.csv")
head(fin)

fin$ID <- factor(fin$ID)
fin$Inception <- factor(fin$Inception)
str(fin)

#Converting char to num

a <-c("12","13","14","12","12")
a 
typeof(a) #"character"
b<-as.numeric(a)
b
typeof(b) #"double"

#Factor Variable Trap -> when we try to convert factor to non-factor

z<-factor(c("12","13","14","12","12"))
z
typeof(z) #int z which is interization of z toh R levels ko 1 2 3.. krta h aur back end mai 12 ko 1 mila 13 ko 2 14 ko 3 toh 
# 1 2 3 1 1 bann gaya iss liye y aaya aisa
y<-as.numeric(z)
y #1 2 3 1 1
typeof(y) #"double"

#correct way
x<-as.numeric(as.character(z))
x
typeof(x) #"double"
