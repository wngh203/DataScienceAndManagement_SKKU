# In-Class-Exercise: Regression

# Ju Ho Yoon

# ---1---
fv <- c(20,32,35,34,40,51,52,56,57,68)
sv <- c(23,34,36,44,42,51,54,57,54,62)
# 1A: plot(fv, sv)
# 1B: postive, strong, increasing
# 1C: cor(fv, sv) = 0.9690331
r <- cor(fv, sv)
se <- sqrt((1-r^2)/(length(fv)-2))
# 1D: se = 0.08730325, 
rt <- cor.test(fv, sv)
rt$conf.int
# 1E: confidence interal: (0.87,0.99)

# ---2---
# 2a, correlation is the same, unaffected by constant
c1_B <- c1 + 30
c2_B <- c2 + 30
cor(c1,c2_B)

# 2b,correlation is the same, unaffect multiplying by constant
c1_C <- c1*100
cor(c1_C,c2)

# ---3---
a1: c()
a2: c()
plot(a1, a2)
# 3A: plot(a1, a2)
# 3B:mortality = 16.37 + 10.26 * (log home range)
m <- lm(b2~b1)
abline(m)
# 3C: H0 = home range size doens't predict infant mortality 
#     Ha = home range size does predict infant morality 
#     # answer: b = 9.955, a=16.280, SE = 2.766, t=3.6, df=18, P = 0.002
#      reject null Ho
summary(m)
a <- m$coefficients[1]
b <- m$coefficients[2]

a = 16.28047
b = 9.955187

# predicted values vs actual values
b3 <- mat.or.vec(20,1)
for (i in 1:length(b3)) {
  b3[i] = b*b1[i] + a
}

points(b1,b3,col="red")


# 3D:
b1_p <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
b2_p <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,25)
m_p <- lm(b2_p~b1_p)
abline(m_p)
summary(m_p)

# answer: b = 6.600, a=17.510, SE = 3.074, t=2.147, df=17, P = 0.0465
# still reject Ho but not as strongly, the slope changes from 9.955 to 6.600
