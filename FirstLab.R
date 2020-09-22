#libs
library(datasets)
library(matrixStats)

# import of custom files
source("meanAir.R")
source("maxTemp.R")
source("testSet.R")

a <- airquality
ozone <-a$Ozone
solar <-a$Solar.R
#print(head(a))
#print(nrow(a))
#print(ncol(a))
#print(nrow(a[complete.cases(a), ]))
#print(sum(is.na(ozone) & is.na(solar)))

#hard way to print for each column
#print(min(ozone, na.rm=T))
#print(max(ozone, na.rm=T))
#print(mean(ozone, na.rm=T))
#easy way to show summary of a matrix min/max/mean
#print(summary(a))

# check how to get rid of NA values in this case
#print(colMaxs(as.matrix(a[sapply(a, is.numeric)])))
#print(colMins(as.matrix(a[sapply(a, is.numeric)])))
#print(colMeans(as.matrix(a[sapply(a, is.numeric)])))
#print(mean(a$Solar.R[a$Month == 5], na.rm=T))

#Task 3
#print(meanAir("Ozone"))
#print(meanAir("Ozone", 0, 60))
#print(meanAir("Solar.R", 0, 100))

##fix task 4
#x <- split(a$Solar.R, a$Month)
#print(lapply(x, na.rm=TRUE, mean))

#Task5
#print(maxTemp(5))

#Task6
#print(testSet(50))