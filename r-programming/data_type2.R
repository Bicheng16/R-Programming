# Data missing values

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
