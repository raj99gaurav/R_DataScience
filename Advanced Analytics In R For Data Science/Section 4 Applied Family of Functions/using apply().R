?apply

#he function to be applied: see ‘Details’. In the case of functions like +, %*%, etc., the function name must be backquoted or quoted.

Chicago
apply(Chicago,1,mean)

#check'
mean(Chicago["AvgPrecip_inch",])

#analyze one city
apply(Chicago,1,max)
apply(Chicago,1,min)

#for practice : doesnt make sense but good exercise
apply(Chicago,2,mean)
apply(Chicago,1,min)


#Compare :
apply(Chicago,1,mean)
apply(NewYork,1,mean)
apply(Houston,1,mean)
apply(SanFrancisco,1,mean)

  #<< nearly dev 1 but there is a faster way
