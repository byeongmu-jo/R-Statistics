library(dplyr)
data <- mtcars
# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다.
var.test(data$mpg ~ data$am)
# 0.06691, 귀무가설 체택, 분산의 차이가 없다.(등분산성)

da1 <- filter(data, data$am == "1")
da2 <- filter(data, data$am == "0")
da3 <- data.frame(da1$am, da1$mpg)
da4 <- data.frame(da2$am, da2$mpg)

# H0 : mpg의 차이가 없다., H1 : mpg의 차이가 있다.
t.test(da3$da1.mpg, da4$da1.mpg)
#6.909e-09 대립가설 채택, mpg의 차이가 있다.

install.packages("MASS")
library(MASS)
data10 <- Cars93
data11 <- filter(data10, Origin == "non-USA")
data12 <- filter(data10, Origin == "USA")
# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다
var.test(data10$Price ~ data10$Origin)

# 0.01387, 귀무가설 체택, 분산의 차이가 있다.(등분산성)
# H0 : group 에 대해서 차 가격(Price)의 평균이 차이가 없다. 
# H1 : group 에 대해서 차 가격(Price)의 평균이 차이가 있다.
t.test(data11$Price, data12$Price,  var.equal = F)
# 0.3428, 귀무가설 체택, 차 가격(Price)의 평균이 차이가 없다.(등분산성)

install.packages("ggplot2")
library(ggplot2)
data20 <- mpg
data21 <- filter(data20, data20$class == 'midsize')
data22 <- filter(data20, data20$class == 'subcompact')
data23 <- rbind(data21,data22)
# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다
var.test(data23$displ ~ data23$class)
# 0.009934 분산의 차이가 있다

# H0 : subcompact 자동차와 midsize 자동차의 고속도로 연비 차이가 없다. 
# H1 : subcompact 자동차와 midsize 자동차의 고속도로 연비 차이가 있다.
t.test(data21$displ, data12$displ,  var.equal = F)
# 2.2e-16 subcompact 자동차와 midsize 자동차의 고속도로 연비 차이가 있다.

data20 <- mpg
data24 <- filter(data20, data20$fl == 'r')
data25 <- filter(data20, data20$fl == 'p')
data26 <- rbind(data24,data25)
# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다
var.test(data26$cty ~ data26$fl)
# 0.983840 분산의 차이가 없다

# H0 : 일반 휘발유(r)와 고급 휘발유(p)의 도시 연비 차이가 없다. 
# H1 : 일반 휘발유(r)와 고급 휘발유(p)의 도시 연비 차이가 있다.
t.test(data24$cty, data25$cty,  var.equal = F)
# 0.2283 일반 휘발유(r)와 고급 휘발유(p)의 도시 연비 차이가 없다. 

data20 <- mpg
data30 <- filter(data20, data20$class == 'subcompact')
data31 <- filter(data30, data30$drv == 'r')
data32 <- filter(data30, data30$drv == 'f')
data33 <- rbind(data31, data32)
# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다
var.test(data33$cty ~ data33$drv)
#0.002612 분산의 차이다 없다

# H0 : 전륜구동(f)이냐 후륜구동(r)이냐에 따른 도시 연비 차이가 없다. 
# H1 : 전륜구동(f)이냐 후륜구동(r)이냐에 따른 도시 연비 차이가 있다.
t.test(data31$cty, data32$cty,  var.equal = F)
# 1.759e-06전륜구동(f)이냐 후륜구동(r)이냐에 따른 도시 연비 차이가 있다.


c1 <- c(51.4,52,45.5,54.5,52.3,50.9,52.7,50.3,53.8,53.1)
c2 <- c(50.1,51.5,45.9,53.1,51.8,50.3,52.0,49.9,52.5,53)
c3 <- data.frame(c1 = c1 , x = 1)
c4 <- data.frame(c1 = c2 , x= 2)
c5 <- rbind(c3,c4)

# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다.
class(c3$c3)
var.test(c5$c1 ~ c5$x)
# 0.6375, 귀무가설 체택, 분산의 차이가 없다.(등분산성)

# H0 : 할당차이가 차이가 없다, H1 : 할당차이가 차이가 있다.
c6 <- data.frame(c1,c2,c3=c1-c2)
t.test(c6$c1, c6$c2,paired = T)
t.test(c6$c3)
# 0.006209, 대립가설 체택, 할당차이가 차이가 있다.

a1 <- c(13.2,8.2,10.9,14.3,10.7,6.6,9.5,10.8,8.8,13.3)
a2 <- c(14.0,8.8,11.2,14.2,11.8,6.4,9.8,11.3,9.3,13.6)
a3 <- data.frame(a1 = a1 , x = 1)
a4 <- data.frame(a1 = a2 , x= 2)
a5 <- rbind(a3,a4)

# H0 : 분산의 차이다 없다, H1 : 분산의 차이가 있다.
class(a3$a3)
var.test(a5$a1 ~ a5$x)
# 0.9372, 귀무가설 체택, 분산의 차이가 없다.(등분산성)

# H0 : 왼쪽 신발 밑창의 닳은 정도와 오른쪽 신발 밑창의 닳은 정도의 차이 없다. 
# H1 : 왼쪽 신발 밑창의 닳은 정도와 오른쪽 신발 밑창의 닳은 정도의 차이 있다. 
a6 <- data.frame(a1,a2,a3=a1-a2)
t.test(a6$a1, a6$a2,paired = T)
t.test(a6$a3)
# 0.008539, 대립가설 채택, 왼쪽 신발 밑창의 닳은 정도와 오른쪽 신발 밑창의 닳은 정도의 차이 있다.

