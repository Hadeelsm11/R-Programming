A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#Transpose matrices
t(A)
t(B)

#Create two vectors
a<- c(1:10)
b<- c(1:100)

#Multiply matrices by vectors 
A %*% a
B %*% b

#re-assign the vectors to equal the number of rows 
#of the columns for the corresponding matrix
a<- nrow(A)
b<- nrow(B)


#Multiply the matrix by a matrix
C<- A%*%B

#Inverse the Matrix
S<- matrix(2:5, nrow = 2)

#Solve S
solve(S)

#Check det()
det(S)

det(A)

