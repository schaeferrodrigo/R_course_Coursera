# quiz Second week

source("pollutantmean.R")
source("complete.R")
source("corr.R")
#1  What value is returned by the following call to pollutantmean()?
#You should round your output to 3 digits.
pollutantmean("specdata", "sulfate", 1:10)


#2 pollutantmean("specdata", "nitrate", 70:72)

#3 pollutantmean("specdata", "sulfate", 34)

#4 pollutantmean("specdata", "nitrate")

#5 cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
#print(cc$nobs)

#6 cc <- complete("specdata", 54)
#print(cc$nobs)

#7 
#set.seed(42)
#cc <- complete("specdata", 332:1)
#use <- sample(332, 10)
#print(cc[use, "nobs"])

#8 cr <- corr("specdata")                
#cr <- sort(cr)                
#set.seed(868)                
#out <- round(cr[sample(length(cr), 5)], 4)
#print(out)

#9
#cr <- corr("specdata", 129)                
#cr <- sort(cr)                
#n <- length(cr)                
#set.seed(197)                
#out <- c(n, round(cr[sample(n, 5)], 4))
#print(out)

#10 cr <- corr("specdata", 2000)                
#n <- length(cr)                
#cr <- corr("specdata", 1000)                
#cr <- sort(cr)
#print(c(n, round(cr, 4)))