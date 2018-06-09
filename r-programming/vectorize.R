# vectorized operation 

# Element-wise operation: +,-,*,/,<,> etc.
x <- 1:4; y<- 6:9

x + y
x > 2
y == 8
x * y
x / y

# Similar for matrix
x <- matrix(1:4, 2, 2)
y <- matrix(rep(10,4), 2, 2)

x * y  # Element wise
x %*% y # True matrix multiplication