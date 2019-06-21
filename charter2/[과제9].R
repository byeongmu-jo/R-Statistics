#카이제곱, 티, 에프
n <- 1000
ky4 <- rep(NA, n)
ky16 <- rep(NA, n)
ky64 <- rep(NA, n)
ky256 <- rep(NA, n)

for(i in 1:n) {
  ky4[i] <- mean(rchisq(4, 10))
  ky16[i] <- mean(rchisq(16, 10))
  ky64[i] <- mean(rchisq(64, 10))
  ky256[i] <- mean(rchisq(256, 10))
}

par(mfrow=c(2,2))
hist(ky4, prob=T, main="카이제곱 4")
x1 <- seq(min(ky4), max(ky4), length=1000)
y1 <- dnorm(x=x1, mean=10, sd=(sqrt(2*10))/sqrt(4))
lines(x1, y1, lty=1, lwd=1)

hist(ky16, prob=T, main="카이제곱 16")
x1 <- seq(min(ky16), max(ky16), length=1000)
y1 <- dnorm(x=x1, mean=10, sd=(sqrt(2*10))/sqrt(16))
lines(x1, y1, lty=1, lwd=1)

hist(ky64, prob=T, main="카이제곱 64")
x1 <- seq(min(ky64), max(ky64), length=1000)
y1 <- dnorm(x=x1, mean=10, sd=(sqrt(2*10))/sqrt(64))
lines(x1, y1, lty=1, lwd=1)

hist(ky256, prob=T, main="카이제곱 256")
x1 <- seq(min(ky256), max(ky256), length=1000)
y1 <- dnorm(x=x1, mean=10, sd=(sqrt(2*10))/sqrt(256))
lines(x1, y1, lty=1, lwd=1)




n <- 1000
ty4 <- rep(NA, n)
ty16 <- rep(NA, n)
ty64 <- rep(NA, n)
ty256 <- rep(NA, n)

for(i in 1:n) {
  ty4[i] <- mean(rt(4, 10))
  ty16[i] <- mean(rt(16, 10))
  ty64[i] <- mean(rt(64, 10))
  ty256[i] <- mean(rt(256, 10))
}

par(mfrow=c(2,2))
hist(ty4, prob=T,  main="t분포 4")
x1 <- seq(min(ty4), max(ty4), length=1000)
y1 <- dnorm(x=x1, mean=0, sd=(sqrt(10 / (10 - 2)))/sqrt(4))
lines(x1, y1, lty=1, lwd=1)

hist(ty16, prob=T,  main="t분포 16")
x1 <- seq(min(ty16), max(ty16), length=1000)
y1 <- dnorm(x=x1, mean=0, sd=(sqrt(10 / (10 - 2)))/sqrt(16))
lines(x1, y1, lty=1, lwd=1)

hist(ty64, prob=T,  main="t분포 64")
x1 <- seq(min(ty64), max(ty64), length=1000)
y1 <- dnorm(x=x1, mean=0, sd=(sqrt(10 / (10 - 2)))/sqrt(64))
lines(x1, y1, lty=1, lwd=1)

hist(ty256, prob=T,  main="t분포 256")
x1 <- seq(min(ty256), max(ty256), length=1000)
y1 <- dnorm(x=x1, mean=0, sd=(sqrt(10 / (10 - 2)))/sqrt(256))
lines(x1, y1, lty=1, lwd=1)





n <- 1000
fy4 <- rep(NA, n)
fy16 <- rep(NA, n)
fy64 <- rep(NA, n)
fy256 <- rep(NA, n)

for(i in 1:n) {
  fy4[i] <- mean(rf(4, 5,10))
  fy16[i] <- mean(rf(16, 5,10))
  fy64[i] <- mean(rf(64, 5,10))
  fy256[i] <- mean(rf(256, 5,10))
}


par(mfrow=c(2,2))
hist(fy4, prob=T,  main="f분포 4")
x1 <- seq(min(fy4), max(fy4), length=1000)
y1 <- dnorm(x=x1, mean=(10/8), sd=sqrt((2*100*13)/(5*(8^2)*6))/sqrt(4))
lines(x1, y1, lty=1, lwd=1)

hist(fy16, prob=T,  main="f분포 16")
x1 <- seq(min(fy16), max(fy16), length=1000)
y1 <- dnorm(x=x1, mean=(10/8), sd=sqrt((2*100*13)/(5*(8^2)*6))/sqrt(16))
lines(x1, y1, lty=1, lwd=1)

hist(fy64, prob=T,  main="f분포 64")
x1 <- seq(min(fy64), max(fy64), length=1000)
y1 <- dnorm(x=x1,mean=(10/8), sd=sqrt((2*100*13)/(5*(8^2)*6))/sqrt(64))
lines(x1, y1, lty=1, lwd=1)

hist(fy256, prob=T,  main="f분포 256")
x1 <- seq(min(fy256), max(fy256), length=1000)
y1 <- dnorm(x=x1, mean=(10/8), sd=sqrt((2*100*13)/(5*(8^2)*6))/sqrt(256))
lines(x1, y1, lty=1, lwd=1)















































x <- seq(0, 100, length.out = 1000)

xy2 <- dchisq(x, 10)
xy4 <- dchisq(x,10)
xy8 <- dchisq(x, 10)
xy16 <- dchisq(x, 10)


par(mfrow=c(2,2))

plot(x, xy2, type = 'l', main = '카이제곱분포 자유도:4', ylab = 'y', ylim = c(0, 0.5))
plot(x, xy4, type = 'l', main = '카이제곱분포 자유도:16', ylab = 'y', ylim = c(0, 0.5),xlim = c(0, 30))
plot(x, xy8, type = 'l', main = '카이제곱분포 자유도:64', ylab = 'y', ylim = c(0, 0.5),xlim = c(0, 30))
plot(x, xy16, type = 'l', main = '카이제곱분포 자유도:256', ylab = 'y', ylim = c(0, 0.5),xlim = c(0, 30))

x<-seq(-3,3,by=0.01)
z<-dnorm(x)
plot(x,z,type="l")

ty4 <- dt(x, 4)
ty6 <- dt(x, 6)
ty16 <- dt(x, 16)
ty32 <- dt(x, 32)

par(mfrow=c(2,2))
plot(x, ty4, type = 'l', main = 't분포 자유도:4', ylab = 'y', ylim = c(0, 0.5))
plot(x, ty6, type = 'l', main = 't분포 자유도:6', ylab = 'y', ylim = c(0, 0.5))
plot(x, ty16, type = 'l', main = 't분포 자유도:16', ylab = 'y', ylim = c(0, 0.5))
plot(x, ty32, type = 'l', main = 't분포 자유도:32', ylab = 'y', ylim = c(0, 0.5))


#F분포
x <- seq(0, 5, length.out = 1000)

dy1 <- df(x, 5, 1)
dy10 <- df(x, 5, 20)
dy30 <- df(x, 5, 50)
dy50 <- df(x, 5, 1000)

par(mfrow=c(2,2))
plot(x, dy1, type = 'l', main = 'f분포 자유도:5,1', ylab = 'y',ylim = c(0, 1))
plot(x, dy10, type = 'l', main = 'f분포 자유도:5,20', ylab = 'y',ylim = c(0, 1))
plot(x, dy30, type = 'l', main = 'f분포 자유도:5,50', ylab = 'y',ylim = c(0, 1))
plot(x, dy50, type = 'l', main = 'f분포 자유도:5,1000', ylab = 'y',ylim = c(0, 1))





