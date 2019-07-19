1.1
x = range(100,999)
y = range(100,999)
d=[]
for i in x:
    for k in y:
        su = i*k
        sus = (str(su))
        if (sus == ''.join(reversed(sus))):
            d.append(sus)
print(max(map(int,d)))

2.1
from string import ascii_lowercase
a = list(ascii_lowercase+ascii_lowercase+ascii_lowercase+ascii_lowercase+ascii_lowercase)

n = int(input())
k = str(input())
for i in k:
    print (a[a.index(i)+n])


















