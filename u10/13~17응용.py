문제 1.1
year = int(input())
if year % 4 == 0 and year % 400 == 0:
    print(year,'년 윤년입니다.')
elif year % 4 == 0 and year % 100 == 0:
    print(year,'년 윤년이 아닙니다.')

datetime.datetime(2017,12,25,int(input()))

문제 1.2
time = datetime.datetime(2019, 7, 17, 1, 00)
s = datetime.timedelta(minutes = 45)
time - s

문제 1.3

list = [4 , 5 , 7,8]
for i in range(0, len(list) - 1):
    for k in range(i + 1, len(list)):
        if list[i] < list[k]:
            list[i], list[k] = list[k], list[i]
print(list[2])

문제 1.4

outerBreak = False
for a in range(1, 333):
    if outerBreak:
        break
    for b in range(a+1, 500):
        c = 1000 - a - b
        if c < b:
            continue
        if a**2 + b**2 == c**2:
            print(a, b, c, a+b+c)
            print(a**2, b**2, c**2)
            outerBreak = True
            break;



문제 2.1
count = int(input('테스트 케이스의 개수> '))
a, b = map(int, input('두 수 입력> ').split())

for i in range(1, count+1):
    print('Case #'+str(i)+':', a, '+', b, '=', a+b)


문제 2.2

# 5이상 9이하의 홀수를 입력받아 다이아몬드 형태의 별을 출력하는 프로그램
n = int(input('5이상 9이하의 홀수> '))
height = (n + 1) // 2

for i in range(1, height+1):
    for k in range(height-i):
        print(' ', end='')
    for k in range(i*2-1):
        print('*', end='')
    print()

for i in reversed(range(1, height)):
    for k in range(i, height):
        print(' ', end='')
    for k in range(i*2-1):
        print('*', end='')
    print()

000010000 5
000111000 456
001111100 34567
011111110 2345678
001111100 34567
000111000 456
000010000 5

문제 2.3

# 디지털 시계에 하루동안(00:00~23:59) 3이 표시되는 시간을 초로 환산하면
# 총 몇 초(second) 인가?
total = 0
# for hour in range(24):
#     if hour % 10 == 3:          # 3시, 13시, 23시
#         total += 60 * 60;
#     else:
#         for min in range(60):
#             if min // 10 == 3:  # 30분 ~ 39분
#                 total += 60
#             elif min % 10 == 3: # 3분, 13분, 23분, 43분, 53분
#                 total += 60

for hour in range(24):
    for min in range(60):
        time = str(hour) + str(min)
        if '3' in time:
            total += 60

print(total)

문제 2.4
# 1~1000에서 각 숫자의 개수
counts = [0] * 10

for i in range(1, 10):
    counts[i] += 1
for i in range(10, 100):
    counts[i // 10] += 1
    counts[i % 10] += 1
for i in range(100, 1000):
    counts[i // 100] += 1
    counts[(i % 100) // 10] += 1
    counts[i % 10] += 1
for i in range(1000, 1001):
    counts[i // 1000] += 1
    counts[(i % 1000) // 100] += 1
    counts[(i % 100) // 10] += 1
    counts[i % 10] += 1

print(counts)

문제 2.5

# 자기 자신을 제외한 모든 양의 약수들의 합이 자기 자신이 되는 자연수
def getDivisor(number):     # 자기 자신을 제외한 약수를 구하는 함수
    result = list()
    for i in range(1, number):
        if number % i == 0:
            result.append(i)
    return result

n = int(input('정수 입력> '))
for i in range(1, n+1):
    div = getDivisor(i)
    if i == sum(div):
        print(i)


문제 2.6
n = int(input('자연수 입력> '))

sumOfSquare = 0
sum = 0
for i in range(1, n+1):
    sum += i
    sumOfSquare += i ** 2
squareOfSum = sum ** 2
print('합의 제곱 =', squareOfSum)
print('제곱의 합 =', sumOfSquare)
print('차이 =', squareOfSum - sumOfSquare)




#13.심사문제
price = int(input())
cash = int(input())
print(price-cash)

#14.심사문제
gu = 89
o = 72
su = 93
ga = 82

#15 심사문제
age = int(input())
balance = 9000

if  7<= age <=12:
    print(balance - 650)
elif 13<= age <=18:
    print(balance - 1050)
elif 19<= age:
    print(balance - 1250)

#16 심사문제
gu = int(input())

for i in range(1,9):
    print(gu,'*',i,'=',gu * i)

#17 심사문제
money = int(input())
g = 1350

while True:
    print(money-(g*i))


money = int(input())
g = 1350
for i in range(1,999999999):
    print(money-(g*i))
    if money-(g*i) <=1350:
        break






