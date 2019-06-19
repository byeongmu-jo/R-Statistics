data <- read.csv("노선별_이용차량__통행료수입_현황_20190618134048.csv")


library(dplyr)
data28 <- select(data, 노선별.1., X2018..09..28, X2018..09..28.1, X2018..09..28.2,
                 X2018..09..28.3, X2018..09..28.4, X2018..09..28.5, X2018..09..28.6,
                 X2018..09..28.7, X2018..09..28.8, X2018..09..28.9, X2018..09..28.10,
                 X2018..09..28.11)

data29 <- select(data, 노선별.1., X2018..09..29, X2018..09..29.1, X2018..09..29.2,
                X2018..09..29.3, X2018..09..29.4, X2018..09..29.5, X2018..09..29.6,
                X2018..09..29.7, X2018..09..29.8, X2018..09..29.9, X2018..09..29.10,
                X2018..09..29.11)


data30 <- select(data, 노선별.1., X2018..09..30, X2018..09..30.1, X2018..09..30.2,
                X2018..09..30.3, X2018..09..30.4, X2018..09..30.5, X2018..09..30.6,
                X2018..09..30.7, X2018..09..30.8, X2018..09..30.9, X2018..09..30.10,
                X2018..09..30.11)
library(reshape)

data28 <- rename(data28, c(노선별.1.= "노선별",
                 X2018..09..28 = "1종대수28",
                 X2018..09..28.1 = "2종대수28",
                 X2018..09..28.2 = "3종대수28",
                 X2018..09..28.3 = "4종대수28",
                 X2018..09..28.4 = "5종대수28",
                 X2018..09..28.5 = "6종대수28",
                 X2018..09..28.6 = "1종통행료28",
                 X2018..09..28.7 = "2종통행료28",
                 X2018..09..28.8 = "3종통행료28",
                 X2018..09..28.9 = "4종통행료28",
                 X2018..09..28.10 = "5종통행료28",
                 X2018..09..28.11 = "6종통행료28"))

data29 <- rename(data29, c(노선별.1.= "노선별",
                              X2018..09..29 = "1종대수29",
                              X2018..09..29.1 = "2종대수29",
                              X2018..09..29.2 = "3종대수29",
                              X2018..09..29.3 = "4종대수29",
                              X2018..09..29.4 = "5종대수29",
                              X2018..09..29.5 = "6종대수29",
                              X2018..09..29.6 = "1종통행료29",
                              X2018..09..29.7 = "2종통행료29",
                              X2018..09..29.8 = "3종통행료29",
                              X2018..09..29.9 = "4종통행료29",
                              X2018..09..29.10 = "5종통행료29",
                              X2018..09..29.11 = "6종통행료29"))

data30 <- rename(data30, c(노선별.1.= "노선별",
                              X2018..09..30 = "1종대수30",
                              X2018..09..30.1 = "2종대수30",
                              X2018..09..30.2 = "3종대수30",
                              X2018..09..30.3 = "4종대수30",
                              X2018..09..30.4 = "5종대수30",
                              X2018..09..30.5 = "6종대수30",
                              X2018..09..30.6 = "1종통행료30",
                              X2018..09..30.7 = "2종통행료30",
                              X2018..09..30.8 = "3종통행료30",
                              X2018..09..30.9 = "4종통행료30",
                              X2018..09..30.10 = "5종통행료30",
                              X2018..09..30.11 = "6종통행료30"))

data28 <- data28[-1,]
data29 <- data29[-1,]
data30 <- data30[-1,]

data2 <- cbind(data28,data29,data30)
data2 <- data2[,-c(14,27)]

str(data2)
library(ggplot2)

data2$`1종대수28` <- as.character(data2$`1종대수28`)
data2$`1종대수28` <- as.numeric(data2$`1종대수28`)

data2$`2종대수28` <- as.character(data2$`2종대수28`)
data2$`2종대수28` <- as.numeric(data2$`2종대수28`)

data2$`3종대수28` <- as.character(data2$`3종대수28`)
data2$`3종대수28` <- as.numeric(data2$`3종대수28`)

data2$`4종대수28` <- as.character(data2$`4종대수28`)
data2$`4종대수28` <- as.numeric(data2$`4종대수28`)

data2$`5종대수28` <- as.character(data2$`5종대수28`)
data2$`5종대수28` <- as.numeric(data2$`5종대수28`)

data2$`6종대수28` <- as.character(data2$`6종대수28`)
data2$`6종대수28` <- as.numeric(data2$`6종대수28`)

data2$`1종통행료28` <- as.character(data2$`1종통행료28`)
data2$`1종통행료28` <- as.numeric(data2$`1종통행료28`)

data2$`2종통행료28` <- as.character(data2$`2종통행료28`)
data2$`2종통행료28` <- as.numeric(data2$`2종통행료28`)

data2$`3종통행료28` <- as.character(data2$`3종통행료28`)
data2$`3종통행료28` <- as.numeric(data2$`3종통행료28`)

data2$`4종통행료28` <- as.character(data2$`4종통행료28`)
data2$`4종통행료28` <- as.numeric(data2$`4종통행료28`)

data2$`5종통행료28` <- as.character(data2$`5종통행료28`)
data2$`5종통행료28` <- as.numeric(data2$`5종통행료28`)

data2$`6종통행료28` <- as.character(data2$`6종통행료28`)
data2$`6종통행료28` <- as.numeric(data2$`6종통행료28`)


data2$`1종대수29` <- as.character(data2$`1종대수29`)
data2$`1종대수29` <- as.numeric(data2$`1종대수29`)

data2$`2종대수29` <- as.character(data2$`2종대수29`)
data2$`2종대수29` <- as.numeric(data2$`2종대수29`)

data2$`3종대수29` <- as.character(data2$`3종대수29`)
data2$`3종대수29` <- as.numeric(data2$`3종대수29`)

data2$`4종대수29` <- as.character(data2$`4종대수29`)
data2$`4종대수29` <- as.numeric(data2$`4종대수29`)

data2$`5종대수29` <- as.character(data2$`5종대수29`)
data2$`5종대수29` <- as.numeric(data2$`5종대수29`)

data2$`6종대수29` <- as.character(data2$`6종대수29`)
data2$`6종대수29` <- as.numeric(data2$`6종대수29`)

data2$`1종통행료29` <- as.character(data2$`1종통행료29`)
data2$`1종통행료29` <- as.numeric(data2$`1종통행료29`)

data2$`2종통행료29` <- as.character(data2$`2종통행료29`)
data2$`2종통행료29` <- as.numeric(data2$`2종통행료29`)

data2$`3종통행료29` <- as.character(data2$`3종통행료29`)
data2$`3종통행료29` <- as.numeric(data2$`3종통행료29`)

data2$`4종통행료29` <- as.character(data2$`4종통행료29`)
data2$`4종통행료29` <- as.numeric(data2$`4종통행료29`)

data2$`5종통행료29` <- as.character(data2$`5종통행료29`)
data2$`5종통행료29` <- as.numeric(data2$`5종통행료29`)

data2$`6종통행료29` <- as.character(data2$`6종통행료29`)
data2$`6종통행료29` <- as.numeric(data2$`6종통행료29`)


data2$`1종대수30` <- as.character(data2$`1종대수30`)
data2$`1종대수30` <- as.numeric(data2$`1종대수30`)

data2$`2종대수30` <- as.character(data2$`2종대수30`)
data2$`2종대수30` <- as.numeric(data2$`2종대수30`)

data2$`3종대수30` <- as.character(data2$`3종대수30`)
data2$`3종대수30` <- as.numeric(data2$`3종대수30`)

data2$`4종대수30` <- as.character(data2$`4종대수30`)
data2$`4종대수30` <- as.numeric(data2$`4종대수30`)

data2$`5종대수30` <- as.character(data2$`5종대수30`)
data2$`5종대수30` <- as.numeric(data2$`5종대수30`)

data2$`6종대수30` <- as.character(data2$`6종대수30`)
data2$`6종대수30` <- as.numeric(data2$`6종대수30`)

data2$`1종통행료30` <- as.character(data2$`1종통행료30`)
data2$`1종통행료30` <- as.numeric(data2$`1종통행료30`)

data2$`2종통행료30` <- as.character(data2$`2종통행료30`)
data2$`2종통행료30` <- as.numeric(data2$`2종통행료30`)

data2$`3종통행료30` <- as.character(data2$`3종통행료30`)
data2$`3종통행료30` <- as.numeric(data2$`3종통행료30`)

data2$`4종통행료30` <- as.character(data2$`4종통행료30`)
data2$`4종통행료30` <- as.numeric(data2$`4종통행료30`)

data2$`5종통행료30` <- as.character(data2$`5종통행료30`)
data2$`5종통행료30` <- as.numeric(data2$`5종통행료30`)

data2$`6종통행료30` <- as.character(data2$`6종통행료30`)
data2$`6종통행료30` <- as.numeric(data2$`6종통행료30`)

sapply(data2, class)

ggplot(data2, aes(x = 노선별, y = `1종대수28`)) +
  geom_bar(stat = 'identity')+
  coord_flip() +
  theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1,
                                 colour="black", size=9)) +
  cale_x_continuous(breaks = 1:1000000000, labels = stop)


data3 <- select(data2, `1종대수28`, 노선별) %>%
  arrange(desc(data2$`1종대수28`)) %>%
  head(5)
  
