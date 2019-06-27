library(dplyr)
library(plyr)
c1 <- c(5,7,6,8,6,7,8,8,6,10)
c1 <- data.frame(c1)
c1 <- mutate(c1, h = "1")
names(c1)[1] <- c("p")
c2 <- c(6,8,9,11,13,12,10,8,9,10)
c2 <- data.frame(c2)
c2 <- mutate(c2, h = "2")
names(c2)[1] <- c("p")
c3 <- c(14,25,26,18,19,22,21,16,20,30)
c3 <- data.frame(c3)
c3 <- mutate(c3, h = "3")
names(c3)[1] <- c("p")

data1 <- rbind(c1,c2,c3)
class(data1$h)

# H0 = 3개 호수의 산소량이 같다.
# H1 = 3개 호수의 산소량이 같지 않다.
data2 <- lm(p ~ h, data=data1)
anova(data2)
# 2.411e-10 3개 호수의 산소량이 같지 않다.

d1 <- c(15.5,14.3,16.3,13.5,15.7,16.4,14.7)
d1 <- data.frame(d1)
d1 <- mutate(d1, h = "A")
names(d1)[1] <- c("p")
d2 <- c(14.7,16.3,15.5,15.2,16.3,13.5,15.4)
d2 <- data.frame(d2)
d2 <- mutate(d2, h = "B")
names(d2)[1] <- c("p")
d3 <- c(15.5,13.2,16.5,15.7,15.3,15.2,14.8)
d3 <- data.frame(d3)
d3 <- mutate(d3, h = "C")
names(d3)[1] <- c("p")

data3 <- rbind(d1,d2,d3)
class(data3$h)

# H0 = 3개 채소의 가격이 같다.
# H1 = 3개 채소의 가격이 같지 않다.
data4 <- lm(p ~ h, data=data3)
anova(data4)
# 0.9824 3개 채소의 가격이 같다.

library(prob)
# H0 = p = 0.15 
# H1 = p != 0.15
qchisq(0.95,1)
chisq.test(c(64,16), p = c(0.85, 0.15))
# 0.2104, 3.841459 > 1.5686  H0 = p = 0.15 


e1 <- c(23,31,13)
e1 <- data.frame(e1)
names(e1)[1] <- c("1갑이상")
e2 <- c(21,48,23)
e2 <- data.frame(e2)
names(e2)[1] <- c("1갑이하")
e3 <- c(63,159,119)
e3 <- data.frame(e3)
names(e3)[1] <- c("안피움")
e5 <- cbind(e1,e2,e3)
rownames(e5) = c("반병이상","반병이하","못마심")

# H0 = 음주량과 흡연량 사이에 연관이 있다.
# H1 = 음주량과 흡연량 사이에 연관이 없다.
chisq.test(e5)
# 0.01215  음주량과 흡연량 사이에 연관이 없다.









