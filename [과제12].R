x <- c(150,  160,  170,  180,  190)
y <- c(176,  179,  182,  181,  185)

g <- data.frame(x,y)
fit <- lm(x ~ y, data=g)
plot(fit)
summary(fit)
# y = 4.4248x + -629.1150
# 만약 아버지키가 165 이면 아들키는 179.46이(가) 될 것이다.


c <- c(100,  200,  300,  400,  500)
d <- c( 30,    70,    85,  140,  197)

f <- data.frame(c,d)
fit2 <- lm(c ~ d, data=g)
summary(fit2)
# y = 2.3853x + 50.9765
# 만약 월 소득 250 이면 신용카드 사용량는 83.43이(가) 될 것이다.

mtcars
data <- mtcars[,c("disp","hp")]
fit3 <- lm(disp ~ hp, data=data)
summary(fit3)
# y=1.4298x + 20.9925

install.packages("MASS")
library(MASS)
library(leaps)
install.packages("car", dependencies = TRUE)
library(car)


data1 <- Boston
head(data1)
any(is.na(data1))#데이터 중에 NA 결측치 값의 존재여부를 판단
summary(data1)

fit4 <- lm(medv ~ crim + zn + indus + chas +  nox  +  rm+  age+    
             dis +rad+ tax+ ptratio + black +lstat, data=data1)
summary(fit4)
par(mfrow=c(1,1))
plot(fit4)
influencePlot(fit4, id.method = "identify")
# 이상치 확인 결과 데이터 입력 오류가 아니라 충분히 설명력을 가지고 있다고 생각하여 제거 하지 않고 그대로 사용한다.

sqrt(vif(fit4)) #루투 VIF값이 2이상이면 다중공산성이 충분이 있다고 보여진다.
#    crim       zn    indus     chas      nox       rm 
#1.338728 1.516166 1.997898 1.036337 2.096120 1.390591 

#age      dis      rad      tax  ptratio    black 
#1.760916 1.988956 2.735781 3.001425 1.341299 1.161258 

#lstat 
#1.715078 

# tax 제거
fit4 <- lm(medv ~ crim + zn + indus + chas +  nox  +  rm+  age+    
             dis +rad+ ptratio + black +lstat, data=data1)
sqrt(vif(fit4))
#crim       zn    indus     chas      nox       rm      age      dis      rad 
#1.338634 1.477918 1.796111 1.028698 2.090280 1.386750 1.760126 1.988579 1.684486 

#ptratio    black    lstat 
#1.337475 1.160846 1.714876 

# nox 제거
fit4 <- lm(medv ~ crim + zn + indus + chas +    rm+  age+    
             dis +rad+ ptratio + black +lstat, data=data1)
sqrt(vif(fit4))

step(fit4, direction = 'backward') #대부분 사용
summary(fit4)

# 유의확률 0.05미만으로 영향력이 없다고 판단하여  age제거 후 분석
fit4 <- lm(medv ~ crim + zn + indus + chas +    rm+     
             dis +rad+ ptratio + black +lstat, data=data1)
summary(fit4)
sqrt(vif(fit4))

# 유의확률 0.05미만으로 영향력이 없다고 판단하여  rad제거 후 분석
fit4 <- lm(medv ~ crim + zn + indus + chas +    rm+     
             dis + ptratio + black +lstat, data=data1)
summary(fit4)
sqrt(vif(fit4))
step(fit4, direction = 'backward') #대부분 사용

par(mfrow=c(2,2))
plot(fit4)

#최종 모형
lm(medv ~ crim + zn + indus + chas +    rm+     
             dis + ptratio + black +lstat, data=data1)




