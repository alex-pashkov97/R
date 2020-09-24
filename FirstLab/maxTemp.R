library(datasets)
library(dplyr)

a <- airquality

maxTemp <- function(days = 1){
    if (days != round(days)){
        stop("Days must be integer type")
    }

    if (days <= 0){
        stop("Days must be bigger than 0")
    }

    sortedDataFrame <- a[order(-a$Temp), ]
    selectedRows <- head(sortedDataFrame, days)
    #print(paste(selectedRows$Month, selectedRows$Day, sep= "/" ))
    return(selectedRows)
}