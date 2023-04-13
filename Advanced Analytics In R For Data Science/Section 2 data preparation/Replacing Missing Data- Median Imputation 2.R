#Replacing Missing Data: Median Imputation Method (Part 2)

#Growth col
fin[!complete.cases(fin),]

med_growth_constr <- median(fin[fin$Industry=="Construction","Growth"],na.rm=TRUE)
med_growth_constr #10
fin[is.na(fin$Growth)&fin$Industry=="Construction","Growth"] <- med_growth_constr
#check:
fin[8,]

fin[!complete.cases(fin),]


#Revenue:
fin[!complete.cases(fin),]
med_rev_constr <- median(fin[fin$Industry=="Construction","Revenue"],na.rm=TRUE)
med_rev_constr #9055058
fin[is.na(fin$Revenue)&fin$Industry=="Construction","Revenue"] <- med_rev_constr
#check:
fin[c(8,42),]

#Expenses: Be careful.Only for certain ones
#we dont want to replace that one thats by itself
fin[!complete.cases(fin),]
med_exp_constr <- median(fin[fin$Industry=="Construction","Expenses"],na.rm=TRUE)
med_exp_constr #4506976

#now picking up the rows i am interested in
fin[is.na(fin$Expenses)&fin$Industry=="Construction",] #that na value isnt in cons industry
#but what if it was
fin[is.na(fin$Expenses)&fin$Industry=="Construction" & is.na(fin$Profit),] #profit is also na for those so
fin[is.na(fin$Expenses)&fin$Industry=="Construction" & is.na(fin$Profit),"Expenses"] <- med_exp_constr
fin[c(8,42),]
fin[!complete.cases(fin),]
