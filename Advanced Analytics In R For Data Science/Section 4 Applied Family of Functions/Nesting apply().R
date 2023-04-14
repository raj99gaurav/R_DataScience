#Nesting apply funcs

Weather
lapply(Weather, rowMeans)
Chicago

apply(Chicago, 1, max)
#apply across whole list:
lapply(Weather, apply, 1 , max) #preferred approach
lapply(Weather, function(x) apply(Chicago, 1, max)) #same


#tidy up:
sapply(Weather, apply, 1 , max) #<< dev 3
sapply(Weather, apply, 1 , min) #<< dev 4