

# --- -2 --- -1 --- 0 --- 1 --- 2 ---

#random normal distrubution rnorm(how many random numbers you want,number from which you want 0 by default , sd default is 1)

rm(answer) #to remove the value of variable

x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
} else if(x >= -1){
    answer <- "Between -1 and 1"
  } else{
    answer <- "Less than -1"
}
