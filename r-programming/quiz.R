## Quiz 1
data <- read.csv("../ds-student/r-programming/hw1_data.csv")

head(data)
tail(data)

dim.data.frame(data)

data[152:153,]
data[47,]

# # of missing values in Ozone
bad <- is.na(data$Ozone)
badcount <- sum(bad)

good <- complete.cases(data$Ozone)
mean(data$Ozone[good])

good <- complete.cases(data$Ozone >= 31, data$Temp >= 90)
data1 <- data$Solar.R[good]
good <- complete.cases(data1)
mean(data1[good])

mean(data$Temp[data$Month == 6])

A <- data$Ozone[data$Month == 5]
good <- complete.cases(A)
max(A[good])