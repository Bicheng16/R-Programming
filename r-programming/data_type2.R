## Data missing values

# NaN/NA: undefined mathematical operations, NaN is a subset of NA
# NA can be int, char, etc; NaN only int
# is.na() test objects if they are NA
# is.nan() test for NaN

x <- c(1,2,NA,10,3)
is.na(x) # works: FALSE FALSE  TRUE FALSE FALSE
is.nan(x) # fails: FALSE FALSE FALSE FALSE FALSE

x <- c(1,2,NaN,10,3)
is.na(x) # works: FALSE FALSE  TRUE FALSE FALSE
is.nan(x) # works: FALSE FALSE  TRUE FALSE FALSE

# Mixing NA and NaN, go with is.na()
x <- c(1,2,NaN,NA, 10,3)
is.na(x) # works: FALSE FALSE  TRUE  TRUE FALSE FALSE
is.nan(x) # fails: FALSE FALSE  TRUE FALSE FALSE FALSE


## Data frames: 2D list; can store different calss of objects in each column
# specical attributes: row.names
# created by calling read.table() or read.csv()
# convert to matrix by calling data.matrix()
x <- read.csv("../ds-student/r-programming/example.csv")
nrow(x)
ncol(x)
data.matrix(x)

x <- data.frame(ID = c("James", "Dylan", "Rod"), Balance = c(1000, 250000, 300))
nrow(x)
ncol(x)
data.matrix(x)

## Names
# vector
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x

# List with names
x <- list(a=1, b=2, c=3)
x

# Matrix with dimnames
m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))