library(ggplot2)
  cars

plot(cars$speed, cars$dist, main = "속도와 제동거리",
     xlab = "속도", ylab = "제동거리", pch = 1, col = "red")

plot(jitter(cars$speed), jitter(cars$dist))

library(dplyr)
Nile
str(Nile) 
class(Nile)
data1 <- as.data.frame(Nile) %>%
  mutate(year = desc(-c(1871:1970)))
class(data1)
ggplot(data1, aes(x = year, y = x)) +
  geom_line()

data2 <- data.frame(date = time(Nile), y = as.matrix(Nile))

ggplot(data2, aes(x = date, y = y)) +
  geom_line()

plot(Nile)
plot (data2, type = 'p',  main= "나일강의 연도별유량변화", 
      xlab="연도",ylab="유량")

head(Nile)
theme_set(Nile)

load("tiling.data.rda")
load('~/523/Data.rda')

rda
load("data.rda")
hist(data$V2, main = "연령별 분포", xlab="연령", ylab="빈도")
barplot (table.V5, main= "출생아별빈도", xlab="출생아수",ylab="빈도") 

pie (table.V4, main= "학력수준별비중") 





