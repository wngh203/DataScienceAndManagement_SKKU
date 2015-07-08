# Assignment2 Codes

# ---1--- 

# Mean
num <- c(90, 95, 89, 71, 73, 96, 87, 95, 107, 89, 96, 80, 97, 95, 102, 97, 93, 101, 82, 83, 74, 91, 83, 98, 95, 111, 99, 120, 93, 84)
mean(num)
# Standard Error Function
se <- function(x) sqrt(var(x)/length(x)) 
se(num)
# 95% CI
t.test(num)

# ---2---

male <- c(220.1, 218.6, 229.6, 228.8, 222.0, 224.1, 226.5)
female <- c(223.4, 221.5, 230.2, 224.3, 223.8, 230.8)
maleMean <- mean(male)
femaleMean <- mean(female)
maleMean
femaleMean
sd <- function(x) sqrt(var(x)/length(x))
sd(male)
sd(female)
maleMedian <- median(male)
femaleMedian <- median(female)
maleMedian
femaleMedian
t.test(male)
t.test(female)

# T Test
t.test(male,female) #(alternative="less",var.equal=TRUE)

# ---4---

personA <- c(248, 236, 269, 254, 249, 251, 260, 245, 239, 255)
personB <- c(380, 391, 377, 392, 398, 374)
personA2 <- 1.5*personA

layout(matrix(2:1, ncol =1))
hist(personA2, xlim=c(350,410))
hist(personB, xlim=c(350, 410))

wilcox.test(personB, personA2)


