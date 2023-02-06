#we first generate the values for the variables 
#"frequency", "blood pressure", "first doctor", 
#"second doctor", and "final decision rating"
freq<- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp<- c(103,87,32,42,59,109,78,205,135,176)
first<- c(1,1,1,1,0,0,0,0,NA,1)
second<- c(0,0,1,1,0,0,1,1,1,1)
finaldecision<- c(0,1,0,1,0,1,0,1,1,1)

#after the variables are assigned, we create a data frame 
#"hospital" based on those 5 variables
hospital<- data.frame(freq, bloodp, first, second, finaldecision)

#this shows the structure of the data frame "hospital"
str(hospital)

#we then go through each variable to see the count/frequency of that 
#variable. 
hist(hospital$freq)
hist(hospital$bloodp)
hist(hospital$first)
hist(hospital$second)
hist(hospital$finaldecision)

#it is shown that the mean value for the final decision is 0.6,
#also meaning 60%. This concludes that 60% of the patients have 
# a high rating.
mean(hospital$finaldecision)

#since the values in blood pressure were too high compared to the 
#other variables, I have seperated it from the group for the boxplots
#to be readable. 
boxplot(hospital$freq, hospital$first, hospital$second, hospital$finaldecision)

#The median value for blood pressire it to be around 100 according to the 
#plot. The difference between the upper quartile and lower quantile of the 
#values is around 70. 
boxplot(hospital$bloodp)
