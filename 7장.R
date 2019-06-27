data <- read.table("chapter7.txt", header = T)
data2 <- data.frame(gender=c(1,1,1,1), weight=c(3350,3380,3800,3900))


boy <- subset(data, gender == 1)
girl <- subset(data, gender == 2)

var.test(data$weight ~ data$gender)

shapiro.test(boy$weight)
shapiro.test(girl$weight)
qqnorm(girl$weight)
qqline(girl$weight)

iriss <- subset(iris, Species == "setosa")
shapiro.test(iriss$Sepal.Width)
qqnorm(iriss$Sepal.Width)
qqline(iriss$Sepal.Width)

var.test(data$weight ~ data$gender)

install.packages("pairedData")
library(pairedData)

data(Anorexia)
data <- Anorexia

install.packages("pstch")

install.packages('installr')

library(installr)

updateR()

c <- c()




















