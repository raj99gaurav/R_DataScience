#Naming components of a list
list_rl1
names(list_rl1)

names(list_rl1) <- c("Machine","Stats","LowThreshold") #[[1]] [[2]] [[3]]

#another way like with df
rm(list_rl1)

list_rl1 <- list(Machine="RL1",Stats=util_stats_r1,LowThreshold=util_under_90_flag)
list_rl1
