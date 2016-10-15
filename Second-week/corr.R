corr <- function( directory , threshold = 0 ){
  data <- complete( directory)
  data_cor <- data[data$nobs > threshold, ]
  num_id <- data_cor[,"id"]
  corr_vector <- c()
  for (ID in num_id){
    monitor <- if (ID < 10) { 
      paste0(0,0,ID,".csv")
    } else {if (ID < 100) {  paste0(0,ID,".csv")
    } else  paste0(ID,".csv")
    }  
    file <- file.path(directory,monitor)
    obs <- read.csv(file)
    correlation <- cor(obs[,"nitrate"] , obs[,"sulfate"], use = "complete.obs") 
    corr_vector <- c(corr_vector , correlation)
  }
  corr_vector
}