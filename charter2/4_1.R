set.seed(9)
n <- 1000
r.1 <- rep(NA, n)
r.2 <- rep(NA, n)

for (i in 1:n) {
  r.1[i] <- mean(rnorm(4,mean=3,sd=1))
  r.2[i] <- mean(rnorm(4,mean=170,sd=6))
}

c(mean(r.1),sd(r.1))
c(mean(r.2),sd(r.2))

hist(r.1)
hist(r.2)

x1 <- seq(min(r.1), max(r.1), length = 1000)
y1 <- dnorm( x=x1 , mean = 3, sd = (1/sqrt(4)))
lines(x1, y1, lty = 2, lwd = 2)


t <- 10
p <- 0.1
x <- 0:10
n <- 1000
b.2 <- rep(NA, n)
b.4 <- rep(NA, n)
b.32 <- rep(NA, n)

for (i in 1:n) {
  b.2[i] <- mean(rbinom(2,size=t, prob = p))
  b.4[i] <- mean(rbinom(4,size=t, prob = p))
  b.32[i] <- mean(rbinom(32,size=t, prob = p))
}

c(mean(b.2), sd(b.2))
c(mean(b.4), sd(b.4))
c(mean(b.32), sd(b.32))

hist(b.2, prob = T, xlim = c(0,4))
hist(b.4, prob = T, xlim = c(0,4))
hist(b.32, prob = T, xlim = c(0,4))

x1 <- seq(min(b.2), max(b.2), length = 1000)
y1 <- dnorm( x=x1 , mean = 1, sd = sqrt(0.9)/sqrt(2))
lines(x1, y1, lty = 2, lwd = 2)

x1 <- seq(min(b.4), max(b.4), length = 1000)
y1 <- dnorm( x=x1 , mean = 1, sd = sqrt(0.9)/sqrt8)
lines(x1, y1, lty = 2, lwd = 2)

x1 <- seq(min(b.32), max(b.32), length = 1000)
y1 <- dnorm( x=x1 , mean = 1, sd = sqrt(0.9)/sqrt(32))
lines(x1, y1, lty = 2, lwd = 2)















































