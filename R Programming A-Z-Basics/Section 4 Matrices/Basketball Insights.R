myplot <- function(data=Salary,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data),type="b",pch = 15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[1:3],col=c(1:4,6),pch = 15:18,horiz = F)
}

#Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#In-Game Metrices
myplot(MinutesPlayed)
myplot(Points)

#In-Game metrics normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observation
myplot(MinutesPlayed/Games)
myplot(Games)

#Time is Valuable
myplot(FieldGoals/MinutesPlayed)

#Player Style
myplot(Points/FieldGoals)
