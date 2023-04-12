
Data <- MinutesPlayed[1:3,]

matplot(t(Data),type="b",pch = 15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1:3],col=c(1:4,6),pch = 15:18,horiz = F)#goes on top of exisitng chart

#Problem - Vector bana dega jabki matplot ko chaiye kya matrix
Data <- MinutesPlayed[1,]

matplot(t(Data),type="b",pch = 15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch = 15:18,horiz = F)#goes on top of exisitng chart

#Solution

Data <- MinutesPlayed[1,,drop=F]

matplot(t(Data),type="b",pch = 15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch = 15:18,horiz = F)#goes on top of exisitng chart
