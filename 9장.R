data1 <- read.csv("pm10.traffic.accident.csv")
data <- read.table("Galton.txt")
names(data) <-c("fater", "mather")

data$

정규성

독립성
durbinWatsonTest(fit)

선형성
crPlots(fit)

등분산성
ncvTest(fit)
spreadLevelPlot(fit)

다중공선성(Multicolinearity)이란?
require(car)
vif(fit)

아니overfit

state.x77

states <- as.data.frame(state.x77[,c("Murder", "Population","Illiteracy","Income","Frost")])  

fit <- lm(Murder~ Population+Illiteracy+Income+Frost, data=states)
summary(fit)

par(mfrow=c(2,2))
plot(fit)

fit3 <- lm(Murder ~ 1 , data = states)

install.packages("leaps")
library(leaps)











