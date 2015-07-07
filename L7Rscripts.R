# Dice
d = 10000 
dice1 <- sample(6, d, replace = TRUE)
dice2 <- sample(6, d, replace = TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)
hist(dice_roll, freq=FALSE)
plot.ecdf(dice_roll)

# meanDist
hist(runif(10000)*6, main="")
means <- numeric(10000)
for (i in 1:10000) {
  means[i] <- mean(runif(5)*6)
}
hist(means, freq=FALSE)
mean(means)
sd(means)
xv <- seq(0, 6, 0.1)
yv <- dnorm(xv, mean=mean(means), sd=sd(means))
lines(xv, yv)


