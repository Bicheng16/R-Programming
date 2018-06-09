## subsetting

x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]

x[x > "a"] # by logical indexing

# subsetting Lists
x <- list(foo=1:4, bar=0.6)
# 1 way to get foo: list
x[1]
# 2 way to get foo: list
x["foo"]
# 3 way to get foo: sequence
x$foo
# 4 way to get foo: sequence
x[["foo"]]
# 5 way to get foo: sequence
x[[1]]
# 6 way to get foo: partial matching
x <- list(aardvar = 1:5)
x$a
x[["a"]]  # fails
x[["a", exact = FALSE]]


# Slicing
x <- c(x, baz = "hello")
x[c(1,3)]

x <- list(a = list(10,12,14), b=c(3.14,2.81))

## Matrix
x <- matrix(1:6, 2, 3)
x[1,2]  # x[row, col] for single element, return as vector of length 1
x[1,2,drop=FALSE] # drop defaultly = TRUE; if turn off, return as a matrix of 1x1

# Get whole row
x[1,]
# Get whole col
x[,2]

# Get single element, retrieve it
y <- cbind(x,x)
# The following is the same, since we always retrieve a matrix
y[, 3:5]
y[, 3:5, drop=FALSE]

# Vector: turn on/off drop is different.
y[, 5]
y[, 5, drop=FALSE]

## Removing NA values
x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
x[!bad]  # ! is "not" logical operator

y <- c("a","b",NA,"d",NA,"f")

# Check multi list/matrix with complete.cases(), can also used for data.frame
good <- complete.cases(x, y)
x[good]
y[good]
