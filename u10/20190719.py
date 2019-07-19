{'a': 10, 'b': 20, 'c': 30, 'd': 40}

for i in x:
    print(i)

for key, value in x.items():
    print(key, value)

terrestrial_planet = {
    'Mercury': {
        'mean_radius': 2439.7,
        'mass': 3.3022E+23,
        'orbital_period': 87.969
    },
    'Venus': {
        'mean_radius': 6051.8,
        'mass': 4.8676E+24,
        'orbital_period': 224.70069,
    },
    'Earth': {
        'mean_radius': 6371.0,
        'mass': 5.97219E+24,
        'orbital_period': 365.25641,
    },
    'Mars': {
        'mean_radius': 3389.5,
        'mass': 6.4185E+23,
        'orbital_period': 686.9600,
    }
}

print(terrestrial_planet['Venus']['mean_radius'])

'orange' in fruits

for f in fruits:
    print(f)

b = set(range(5))

from collections import defaultdict

a&b
a-b
a^b
a+b

os.getcwd()
file = open('hello.txt','w')
file.write('Hello, world!')

with open('james.txt', 'wb') as file:
    pickle.dump(name, file)
    pickle.dump(age, file)
    pickle.dump(address, file)
    pickle.dump(scores, file)

os.listdir()

word = input('단어를 입력하세요: ')

is_palindrome = True
for i in range(len(word) // 2):
    if word[i] != word[-1 - i]:
        is_palindrome = False
        break

print(is_palindrome)


word = input('단어를 입력하세요: ')

word = word.lower()
word = word.strip(string.punctuation + ' ')
is_palindrome = True  # 회문 판별값을 저장할 변수, 초깃값은 True
for i in range(len(word) // 2):  # 0부터 문자열 길이의 절반만큼 반복
    if word[i] != word[-1 - i]:  # 왼쪽 문자와 오른쪽 문자를 비교하여 문자가 다르면
        is_palindrome = False  # 회문이 아님
        break

print(is_palindrome)




































