#the function myMean must have an argument which is assignment2.
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }

myMean(assignment2 = 2)
#When you use the argument 'assignment2 =' it returns the same value that assignment2 is equal to. 
#Here, when you equal the argument assignment2 to 2, it returns the value 2. 
#In the myMean function, the argument inside the parentheses means it must take a value. 
myMean(assignment2)
#When you only use assignment2 on its own (without the equal sign) it will return the mean of the vector 
#assignment2. 
#In conclusion, this function will not work as it is intended to. 
