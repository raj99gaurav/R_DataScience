#Combining lapply() with []

Weather
#lets say we wanted chicago ka 1st ele
Weather[[1]][1,1]
Weather$Chicago[1,1]

#but lets say we have to do it for all so it will need a loop
#right?

lapply(Weather,"[",1,1) #Weather[[1]][1,1] ka Weather[[1]] -> part is lappy(weather)
#so the [ is for [1,1] these [] and 1 1 is the parameter 1,1 it can be 1,2 2,5 etc

lapply(Weather,"[",1,) #first row
lapply(Weather,"[",,"Mar")
lapply(Weather,"[",,3) #same as above
