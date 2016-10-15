complete <- function(directory , id = 1:332){
  num_cases <- c()
  for (ID in id){
    monitor <- if (ID < 10) { 
      paste0(0,0,ID,".csv")
    } else {if (ID < 100) {  paste0(0,ID,".csv")
    } else  paste0(ID,".csv")
    }  
    file <- file.path(directory,monitor)
    data <- read.csv(file)
    nobs <- sum(complete.cases(data[,"nitrate"],data[,"sulfate"]))
    num_cases <- c(num_cases , nobs)
    
  }
  complete_cases <- data.frame(id = id , nobs = num_cases)
  complete_cases
  }