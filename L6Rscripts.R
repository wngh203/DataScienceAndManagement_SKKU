# Making Function
myfunction <- function (x) {
  y <- x + 5
  return (y)
  }


# Making my test function
meanfunction <- function(x,y) {
  z <- (x+y)/2
  return(z)
}

# Dice
d = 10000 
dice1 <- sample(6, d, replace = TRUE)
dice2 <- sample(6, d, replace = TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)
hist(dice_roll, freq=FALSE)
plot.ecdf(dice_roll)

# Normal Distribution
n <- rnorm(1000)
hist(rnorm(1000, mean=5, sd=10))

