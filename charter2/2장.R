data <- read.csv("cafedata.csv", stringsAsFactors = F)

class(data)
str(data)
head(data)
dim(data)

data$Coffees <- as.numeric(data$Coffees)
class(data$Coffees)
sort(data$Coffees, decreasing = T)
sort(data$Coffees)

min(data$Coffees, na.rm = T)
max(data$Coffees, na.rm = T)

stem(data$Coffees)

rc <- data$Coffees
weight=1/(length(rc)-1)
sum(rc*weight,na.rm=T) 
mean(rc,na.rm=T)

rc[rc == max(rc, na.rm = T)] <- 480
mean(rc,na.rm=T)

median.idx <- (1 + length(rc)-1) /2 

sort(rc[median.idx])
median(rc, na.rm = T)

(which.max(rc))

library(ggplot2)
library(dplyr)

height=c(164,  166,  168,  170,172,174,176) 
height.m <- mean(height) 
h.dev <- height-height.m 
h.dev2 <- h.dev^2
sum(h.dev2)


variance <- sum(h.dev2) / length(height)
standard_deviation <- sqrt(variance)

mean(height)
var(height)
sd(height)

qt <- quantile(rc, na.rm = T)

boxplot(rc, axes=F)


boxplot(cars, axes=F)

qs <- quantile(cars$dist)
qs
iqr <- qs[4] - qs[2]

upperLimit <- qs[4] + 1.5 *iqr
lowerLimit <- qs[4] - 1.5 *iqr

cars$dist[cars$dist > upperLimit]
cars$dist[cars$dist < lowerLimit]




