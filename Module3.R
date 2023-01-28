Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie") 

ABC_poll_results <- c(4,62,51,21,2,14,15)

CBS_poll_results <- c(12,75,43,19,1,21,19)

df<- data.frame(Name, ABC_poll_results, CBS_poll_results)



#This line of code shows that ABC only took 169 values of the poll results
sum(df$ABC_poll_results)
#And this line of code shows that CBS only took 190 values of the poll results 
sum(df$CBS_poll_results)

#This line of code shows the maximum number of votes for a candidate 
rownames(df)[df$ABC_poll_results == max(ABC_poll_results)]
#after finding the index number of the result, we use it to find the name that matches the number
#which is 2
df$Name[2] #here the most votes go to "Donald"

#This line of code shows the maximum number of votes for a candidate
rownames(df)[df$CBS_poll_results == max(CBS_poll_results)]
#after finding the index number of the result, we use it to find the name that matches the number 
#which here is 2
df$Name[2] #here the most votes also go to "Donald"

