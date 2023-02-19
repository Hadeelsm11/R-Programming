A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol = 2)

#1. Find A+B, find A-B
A+B
A-B

#2 Use the diag() function to build a matrix of size 4
#with the following values in the diagonal 4,1,2,3
C<- c(4,1,2,3)
diag(C)

#3 Generate the matrix
m<- diag(c(3,3,3,3,3))
m<- diag(3,5,5)
p<- matrix(c(0,1,1,1,1,2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,2,0,0,0,0), ncol = 5, byrow = T)
o<- m+p
o
