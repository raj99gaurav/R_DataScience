stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"] #as col has name we can do this
stats["Angola",3] #we cant do that as angola isnt name as rows are numbered

stats$Internet.users
stats$Internet.users[2]

levels(stats$Income.Group) #all factors
stats[3,stats$Internet.users] #error
