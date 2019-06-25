install.packages("TDist")
library(TDist)

data <- read.csv("age.data.csv")

names(data) <- c("time", "gender","weight","munutes")

tmp <- subset(data, gender == 1)

weight <- tmp[[3]]

n <- length(weight)

allpha <- 0.05

c.u <- qt(1-allpha, df = n-1)
t.test(weight, mu = 2800)

data <- read.table("restitution.txt", header = T)

rel <- ifelse(data$rst < 0.4134 | data$rst > 0.4374, 1 ,0)





















