head(fin)
str(fin)

fin$Profit <- factor(fin$Profit)

fin$Profit <- as.numeric(as.character(fin$Profit))
str(fin)
head(fin)
