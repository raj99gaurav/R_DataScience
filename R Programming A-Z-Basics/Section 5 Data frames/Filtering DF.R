head(stats)
stats$Internet.users < 2
filter <- stats$Internet.users < 2

stats[filter,] #will display TRUE rows
