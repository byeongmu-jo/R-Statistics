install.packages("readxl")
install.packages("xlsx")
install.packages("RJavaTools")
library(readxl)
library(xlsx)
library(RJavaTools)
data <- read_excel("D:/Workspace/R-Statistics/2010_6차_직접측정 데이터.xlsx",
                   sheet = "남성")
data <- read.xlsx("2010_6차_직접측정 데이터.xlsx",2)
dat <- read.csv(file = "D:/Workspace/R-Statistics/2010_6차_직접측정.xlsx" , header = T)

read.table("D:/Workspace/R-Statistics/2010_6차_직접측정 데이터.txt", header = F)
head(data)

