# quiz_week

con <- gzfile("hw1_data.csv" , sep = "-")

data <- read.csv("hw1_data.csv")


# #11
names(data)

#  #12

x <- readLines(con,3)
x

# #13
nrow(data)
# #14
data_matrix <-data.matrix(data)
data_matrix[152:153,]

# #15
data_matrix[47 , 1]

# #16 
z <- data_matrix[ ,1]
z_na <- is.na(z)
num_NA_oz <- sum(z_na)
num_NA_oz

# #17

valid_oz <- z[!is.na(z)]
mean_oz <- sum(valid_oz)/(153 - num_NA_oz)
mean_oz

# #18 Extract the subset of rows of the data frame 
# where Ozone values are above 31 and Temp values are above 90.
# What is the mean of Solar.R in this subset?
useful_data <- data[complete.cases(data),][1:6]
Solar_esp <-useful_data[useful_data$Ozone > 31 & useful_data$Temp >90,"Solar.R"]
mean_solar <- sum(Solar_esp)/length(Solar_esp)
mean_solar

# #19 What is the mean of "Temp" when "Month" is equal to 6?
Tem_month_6 <- data[data$Month ==6 & !is.na(data$Temp) ,"Temp"]
mean_temp_month_6 <- mean(Tem_month_6, na.rm = TRUE)
mean_temp_month_6

# #20 What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
max_ozone_may <- max(data[data$Month ==5,"Ozone"],na.rm = TRUE)
max_ozone_may