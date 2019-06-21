#확률분포
sample(x = 1:6, size= 6)

install.packages('prob')
library(prob)

tosscoin(1)
rolldie(3)

urnsamples(1:3, size = 2)
urnsamples(1:3, size = 2, replace = T)
urnsamples(c(rep("R",3), rep("B",2)), size = 2)

x <- c(0,1,2)
px <- c(1/4, 2/4, 1/4)
ex <- sum(x*px)

x2<-x^2
ex2 <- sum(x2*px)
varx <- ex2 - ex^2

#이항분포
n <- 6
p <- 1/3
x <- 0:n

dbinom(1, size = n, prob = p)
dbinom(4, size = n, prob = p)
px <- dbinom(x, size = n, prob = p)
px1 <- dbinom(x, size = n, prob = p)

plot(x, px1, type = "s")
plot(x, px1, type = "h")

pbinom(2, n, p)
pbinom(4, n, p)
pbinom(4, n, p) - pbinom(2, n, p)
pbinom(4, n, p) + pbinom(2, n, p)

qbinom(0.1, n, p)
qbinom(0.5, n, p)

rbinom(10, n, p)

#분포함수를 이용한 기댓값과 분산
n <- 6
p <- 1/3
x <- 0:n
px <- dbinom(x, size = n, prob = p)

ex = sum(x*px)
ex2 = sum(x^2 * px)
varx <- ex2 - ex^2

n * p
n * p * (1-p)

x <- seq(-3, 3, length=200)
plot(x, dnorm(x, mean=0, sd=1), type='l', 
     main="Normal distribution, X~N(0,1)") 

#정규분포

options(digits = 3)
mu <- 170
sigma <- 6
ll <- mu - 3*sigma
ul <- mu + 3*sigma
x <- seq(ll, ul, by = 0.01)
nd <- dnorm(x, mean = mu, sd = sigma)
plot(x, nd)

library(ggplot2)

pnorm(182, mean=mu, sd=sigma)


pnorm(180, mean=mu, sd=sigma) - pnorm(160, mean=mu, sd=sigma)

qnorm(0.25 , mean = mu, sd = sigma)
qnorm(0.75 , mean = mu, sd = sigma)
qnorm(0.5 , mean = mu, sd = sigma)

options(digits = 5)
set.seed(5)

smp <- rnorm(400, mean = mu, sd = 6)
c(mean(smp), sd(smp))

hist(smp, prob=T)
lines(x, nd, lty=6, lwd = 1)

#정규분포 특징

options(digits = 4)
mu <- 0
sigma <- 1
p0.05 <- qnorm(0.05, mean = mu, sd = sigma)
p0.025 <- qnorm(0.025, mean = mu, sd = sigma)
p0.75 <- qnorm(0.075, mean = mu, sd = sigma)

pnorm(1.645, mu, sigma) - pnorm(-1.645, mu, sigma)
pnorm(1.96, mu, sigma) - pnorm(-1.96, mu, sigma)

p0.05; p0.025

z <- seq(-3,3, by = 0.001)
z.p <- dnorm(z)
plot(z, z.p, axes = F, type = "l",
     ylab = "", ylim = c(-0.04,0.4))

axis(1)

lines(c(-3,3), c(0,0))
points(-1.96,-0.02, pch=17, col="red")
text(-1.96,-0.035, "-1.96", col="red")
points(1.96,-0.02, pch=17, col="red")
text(1.96, -0.035, "1.96", col = "red")








































