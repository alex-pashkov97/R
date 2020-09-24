library(datasets)
library(dplyr)

a <- airquality

testSet <- function(perc = 20){
    if (perc != round(perc)){
        stop("Perc must be integer type")
    }

    if (perc < 0 | perc > 100){
        stop("Perc are out of range [0; 100]")
    }

    perc <- perc/100
    size <- round(nrow(a) * perc)

    output <- a[sample(nrow(a), size = size, replace = FALSE, prob = NULL ), ]
    return(output)
}