## Reading small/medium data
# Tabular data: read.table, read.csv

## read.table for small middle sized dataset 
# Specify delimiter, # of lines skipped at beginning, and comment chars
data1 <- read.table(file="../ds-student/r-programming/example.txt", 
                    header=TRUE, sep=",", skip=3, comment.char = "#")

# Automatically skip lines beginning with #
data2 <- read.table(file="../ds-student/r-programming/example.txt", 
                    header=TRUE, sep=",", skip=3)

# read.csv is identical to read.table except that the default separator is a comma
data3 <- read.csv("../ds-student/r-programming/example.csv")

## Read large dataset  
# with read.table(): set comment.char ="" if there are no commented lines in your file
# specify column classes by colClasses
# specify nrows for memory optimization
# Estimate memory by: nrows * ncols * 8 bytes/numeric / pow(2,20) bytes/MegaBytes
data4 <- read.table(file="../ds-student/r-programming/example.txt", header=TRUE, nrows = 100,
                    sep=",", skip=3, colClasses = c("numeric", "numeric", "numeric", "numeric"))
