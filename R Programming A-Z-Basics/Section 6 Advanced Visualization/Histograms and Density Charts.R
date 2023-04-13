#Geo plus stats layer

s <- ggplot(data=movies,aes(x=BudgetMillions)) #as in histogram we only need x y is made on its own
s+geom_histogram(binwidth = 10) #10 here means 10millions in each bin

#add colour

s+geom_histogram(binwidth = 10, fill="Green") #setting

s+geom_histogram(binwidth = 10,aes(fill=Genre)) #mapping

#add a border as colors are overlapping
s+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")
#>> chart 3 but we will improve it


#somethings you may need density charts :

s+geom_density(aes(fill=Genre))

s+geom_density(aes(fill=Genre),position = "stack")
