pollutantmean <-function(directory , polluent , id = 1:332){
  info <- c()
  for (ID in id){
    monitor <- if (ID < 10) { 
     paste0(0,0,ID,".csv")
    } else {if (ID < 100) {  paste0(0,ID,".csv")
    } else  paste0(ID,".csv")
    }  
    file <- file.path(directory,monitor)
    data <- read.csv(file)
    spec_polluent <- data[,polluent]
    info <-c(info,spec_polluent)
  }
  length(id)
  total_mean <- mean(info , na.rm = TRUE)
  total_mean
}
