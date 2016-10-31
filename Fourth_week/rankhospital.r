rankhospital <- function(state, outcome, num){
  if (is.character(num) == TRUE){
    if (num == 'best'){source('best.R')
      best(stante,outcome )}
    else{source('worst.R')
      worst(state,outcome)}
  }
  
  else{  
  data <- read.csv("outcome-of-care-measures.csv" , na.strings="Not Available" , stringsAsFactors=FALSE)
  if( outcome == "heart attack"){ my_data <- data[,c(2,7,11)]}
  else{
    if (outcome == "heart failure"){my_data <-data[,c(2, 7 , 17 )]}
    else{ if(outcome == 'pneumonia'){ my_data<- data[,c(2, 7 , 23)]}
      else {stop('invalid outcome')}
    }
  }
  names(my_data) <- c('hospital' , 'state' , 'outcome')
  data_by_state <- my_data[my_data$state == state & !is.na(my_data$outcome) ,c('hospital' , 'outcome')]
  if (nrow(data_by_state) == 0) stop("Invalid outcome")
  best_hospitals <- data_by_state[order(data_by_state[,2], data_by_state[,1]),]
  if (nrow(best_hospitals)>=num){best_hospitals[num,'hospital']}
  else{'NA'}
  }
}