#Subsetting a list

#challange : Access first date in unknownhours
list_rl1$UnknownHours[1]


#Subsetting a list
list_rl1[1]
list_rl1[1:2]
list_rl1[c(1,4)] # 1 and 4

sublist_rl1 <-list_rl1[c("Machine","Stats")]
sublist_rl1

sublist_rl1[[2]][2]
sublist_rl1$Stats[2]

#[[]] are not for subsetting but accessing list element