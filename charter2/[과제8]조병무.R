#1) 영화관에서 줄을 기다리는 시간을 측정한다. x
#2) 전화가 왔을 때, 전화를 한 사람이 여자인지를 측정한다. o 
#3) 주사위를 한 번 던졌을 때, 나오는 숫자를 체크한다. x  
#4) 주사위를 한 번 던졌을 때, 숫자 2가 나오는지를 체크한다. o

n <- 10
p <- 4/5
# 2. 10C7 * (4/5)^7 * (1/5)^3
(24/7) * ((4/5)^7) * ((1/5)^3)
pbinom(7, 10, 4/5)


# 3. 20C0*(0.05)^20*(0.95)^0 + 20C1*(0.05)^19*(0.95)^1 + 20C2*(0.05)^18*(0.95)^2
n <- 20
p <- 0.05
pbinom(2, size = 20, prob = 5/100)

# 4.
1 - pbinom(2 ,size = 20, prob = 0.2 )

# 5.
pbinom(2 ,size = 2, prob = 5/36 )

# 6.
5/36

library(prob)
u <- 800
sigma <- 40
options(digits = 3)
#정규 1

u <- 11
sigma <- 16
#정규 2.1 20년이상
1 - pnorm(20, mean=u, sd=sigma)

#정규 2.12 상위 10%
qnorm(0.9 , mean = u, sd = sigma)

#정규 3
u <- 70
sigma <- 8
pnorm(90, mean=u, sd=sigma) - pnorm(80, mean=u, sd=sigma)

#정규 4
u= 1.5
e= 2
h(0) = p(0<=x<=1)
h(2) = p(2<=x<=3)
h(0)+h(2)

u <- 1.5
sigma <- 2
(pnorm(1, mean=u, sd=sigma) - pnorm(0, mean=u, sd=sigma)) + 
  (pnorm(3, mean=u, sd=sigma) - pnorm(2, mean=u, sd=sigma))







