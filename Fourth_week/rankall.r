rankall <- function(outcome, num = 'best'){
  data <- read.csv("outcome-of-care-measures.csv" , na.strings="Not Available" , stringsAsFactors=FALSE)
  if( outcome == "heart attack"){ my_data <- data[,c(2,7,11)]}
  else{
    if (outcome == "heart failure"){my_data <-data[,c(2, 7 , 17 )]}
    else{ if(outcome == 'pneumonia'){ my_data<- data[,c(2, 7 , 23)]}
      else {stop('invalid outcome')}
    }
  } 
  names(my_data) <- c('hospital' , 'state' , 'outcome')
  fac_mydata <- as.factor( my_data[ , 'state'] )
  states <- levels(fac_mydata)
  ranking <- c()
  for (state in states){
    position <-num
    data_by_state <- my_data[my_data$state == state & !is.na(my_data$outcome) ,]
    rank_hospitals <- data_by_state[order(data_by_state[,3], data_by_state[,1] ),c('hospital' , 'state')]
    if (num =='best'){position <- 1}
    else{if (num =='worst'){position <- nrow(rank_hospitals)}
    }
    if (nrow(rank_hospitals)>=position){hospital_desired<- rank_hospitals[position,c('hospital')]}
    else{hospital_desired <-c(hospital ='NA')}
    ranking <-c(ranking,hospital_desired )
      }
  ranking <- data.frame('hospital' = ranking, 'state' = states)
  ranking
  }

