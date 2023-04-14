#Extracting components lists: [] vs [[]] vs $

#three ways
#[] - will alawys return a list
#[[]] - will always return the acutal obj
#$ - same as [[]] but prettier
list_rl1  

list_rl1[1]
list_rl1[[1]]
list_rl1$Machine

list_rl1[2]
typeof(list_rl1[2]) #list
list_rl1[[2]]
typeof(list_rl1[[2]]) #double
list_rl1$Stats
typeof(list_rl1$Stats) #double

#how would you access the 3rd el of vector (max ult) in stats

list_rl1[[2]][3]
list_rl1$Stats[3]
