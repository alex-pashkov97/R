library(datasets)
a <- airquality

meanAir <- function(factor, tMin = 60, tMax = 80){
    if ((factor %in% colnames(a)) == FALSE){
        print("Incorrect factor")
        return(NA)
    }

    filteredDataFrame <- a[a$Temp >= tMin & a$Temp <= tMax, ]
    if (nrow(filteredDataFrame) == 0){
        print("There were zero rows after filtering")
        return(NA)
    }

    factorMean = lapply(filteredDataFrame[factor], na.rm=T, mean)
    print(factorMean)
    return(factorMean)
}