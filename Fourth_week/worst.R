worst <- function( state , outcome ){
  data <- read.csv("outcome-of-care-measures.csv" , na.strings="Not Available" , stringsAsFactors=FALSE)
  if( outcome == "heart attack"){ my_data <- data[,c(2,7,11)]}
  else{
    if (outcome == "heart failure"){my_data <-data[,c(2, 7 ,17 )]}
    else{ if(outcome == 'pneumonia'){ my_data<- data[,c(2, 7 , 23)]}
      else {stop('invalid outcome')}
    }
  }
  names(my_data) <- c('hospital' , 'state' , 'outcome')
  data_by_state <- my_data[my_data$state == state,]
  if (nrow(data_by_state) == 0) stop("Invalid outcome")
  max_value <- max(data_by_state[,'outcome'], na.rm = TRUE)
  best_hospitals <- data_by_state[data_by_state$outcome == max_value & !is.na(data_by_state$outcome), 'hospital']
  best_hospitals <- sort(best_hospitals)
  the_best <- best_hospitals[1]
  the_best
}