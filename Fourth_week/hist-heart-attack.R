outcome <- read.csv("outcome-of-care-measures.csv")
head(outcome)


heart_attack <- as.numeric(outcome[,11])
heart_attack <- heart_attack[!is.na(heart_attack)]
hist(heart_attack)

