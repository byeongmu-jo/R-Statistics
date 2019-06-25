install.packages("readxl")
install.packages("xlsx")
install.packages("RJavaTools")
library(readxl)
library(xlsx)
library(RJavaTools)
data <- read_excel("D:/Workspace/R-Statistics/2010_6차_직접측정 데이터.xlsx",
                   sheet = "남성")
data <- read.xlsx("2010_6차_직접측정 데이터.xlsx",2)
dat <- read.csv(file = "2010_6차_직접측정 데이터.csv" , header = T)

read.table("D:/Workspace/R-Statistics/2010_6차_직접측정 데이터.txt", header = F)
head(data)

read.table("D:/Workspace/R-Statistics/2010_6차_직접측정 데이터.txt", header = T, sep="  ")

data <- read.csv("2010_6차_직접측정남자.csv")

tmp <- subset(data, data$나이 == 7)

height.p <- tmp$X104.키

height <- height.p[sample(length(height.p),15)]

t.test(height, mu=1220)










