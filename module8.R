install.packages("pryr", repos = "http://cran.us.r-project.org")
require(pryr)
library(data.table)
library(plyr)
library(boot)
install.packages("reshape2", repos = "http://cran.us.r-project.org")
library(reshape2)

#Step 1
student6<- read.table('/Users/hadeelmusallam/Downloads/Assignment 6 Dataset.txt', header = T, sep = ",")
student6

StudentAverage<- ddply(student6,"Sex", transform, Grade.Average = mean(Grade))
StudentAverage

#Step 2
write.table(StudentAverage, "Student Average", sep = ",")

i_students<- subset(student6, grepl("i", student6$Name, ignore.case = T))

#Step 3
write.table(i_students, "Student Names with I", sep = ",")

