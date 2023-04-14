#which.max() and which.min() (advanced topic)

#lets say we want max or min with month name and not number
?which.max()

Chicago[1,]
which.max(Chicago[1,]) #index of max as it is a names vector so
names(which.max(Chicago[1,])) #jul

#lets do it for all
apply(Chicago, 1, function(x) names(which.max(x)))

lapply(Weather, function(y) apply(y, 1, function(x) names(which.max(x))))
sapply(Weather, function(y) apply(y, 1, function(x) names(which.max(x))))
