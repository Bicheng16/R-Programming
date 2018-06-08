## Interface to the outside world

str(file)

## Connection
con <- file("../ds-student/r-programming/foo.txt", "r")
data <- read.csv(con, header=FALSE, sep=" ")
close(con)

## Equilvalent to
data <- read.csv("../ds-student/r-programming/foo.txt", header=FALSE, sep=" ")

## READ gz file
# con <- gzfile("words.gz")
# x <- readLines(con,10)
# x

# Reading lines of a text file
con <- url("https://en.wikipedia.org/wiki/Shale_oil_extraction")
x <- readLines(con)
head(x)