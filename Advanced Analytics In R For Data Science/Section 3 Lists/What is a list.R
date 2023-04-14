#What is a list? - vector but can have any type of element

summary(util)
RL1 <- util[util$Machine=="RL1",]
RL1$Machine <- factor(RL1$Machine) # we need to rerun the factor to get rid of legacy factor
summary(RL1)

#Construct list :
#Character: Machine Name
#Vector: (min,mean,max) utilisation for the month (excluding unknown hours)
#Logical: has utilisation ever fallen below90%? TRUE/FALSE

util_stats_r1 <- c(min(RL1$Utilization,na.rm = T),
                   mean(RL1$Utilization,na.rm = T),
                   max(RL1$Utilization,na.rm = T))
util_stats_r1

util_under_90_flag <- length(which(RL1$Utilization < 90)) > 0 #which ignores NA
util_under_90_flag #TRUE so utlization has fallen

list_r1 <- list("RL1",util_stats_r1,util_under_90_flag)
list_r1
