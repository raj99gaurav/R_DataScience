?read.csv()

#Method 1 : Select the file manually 
stats <- read.csv(file.choose())
stats

#Method 2 : Set a working dir. and read data

getwd() #current wd
#windows : setwd("C:\\users\\..")
setwd("/Volumes/M1 SSD/R prac/R Programming A-Z-Basics/Section 5 Data frames") 
getwd()

rm(stats) #just to remove method 1

stats <- read.csv("DemographicData.csv")
stats
