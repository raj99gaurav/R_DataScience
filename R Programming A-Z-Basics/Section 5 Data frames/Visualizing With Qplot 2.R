qplot(data=mergeddf,x=Internet.users,y=Birth.rate)

qplot(data=mergeddf,x=Internet.users,y=Birth.rate,
      color=Region) 

#1.Shapes

qplot(data=mergeddf,x=Internet.users,y=Birth.rate,
      color=Region,size=I(5),shape=I(23))#shapes0-25

#2.Transparency

qplot(data=mergeddf,x=Internet.users,y=Birth.rate,
      color=Region,size=I(5),shape=I(19),
      alpha=I(0.6))#apha is for trans 0 to 1

#3. Title
qplot(data=mergeddf,x=Internet.users,y=Birth.rate,
      color=Region,size=I(5),shape=I(19),
      alpha=I(0.6),
      main = "Birth rate vs Internet users")