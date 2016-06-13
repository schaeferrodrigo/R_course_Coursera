# first step in R

#integers sequence

x<- 11:30 # : gives us a inteer sequence

#number in R always are real, so if i want an integer number i have to do

x <- 1L

# infinty is a number here!
x <- 1/0

attributes(x)

# c is a functio for to create a vector

x<- c(0,1)


#the function matrix generates a matrix

x <- matrix(nrow = 2 , ncol = 2)
x[1,1] <- 1
print(x)

#continue 5.11