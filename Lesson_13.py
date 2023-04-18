Задача №1
def calculator(a, b, op):
    print(eval(f'{a}{op}{b}'))

a = (int(input('Введите первое число: ' )))
b = (int(input('Введите второе число: ' )))
op = (str(input('Введите символ операции (+, -, *, /): ' )))

calculator(a, b, op)

Задача №2
def list_filter(unfiltered):
    def is_alpha(a):
        return a.isalpha()
    list = []
    for i in unfiltered:
        list.append(''.join(filter(is_alpha, i)).capitalize())
    return list

s = ['анТОн', 'НАТАЛЬЯ', 'никита', 'МаРиЯ', '!СЕРГЕЙ!', 'Владимир747', 'Павел+100500']
print(list_filter(s))

Задача №3
def honest(newlist):
    def even(a):
        return a%2 == 0 and a !=0
    print(list(filter(even, newlist)))

test = [*range(20)]
honest(test)

Задача №4
def cesar(newstr):
    return (f'Шифр: {[ord(i)-3 for i in newstr]}')

print(cesar(input('Введите слово: ')))

Задача №5
from random import sample

def countdown(newlist):
    res = list(sorted(test, reverse = True))
    print(*res,'Пуск!')

test = sample(range(0, 11), 11)
countdown(test)

Задача №7
def decorator(name):
    def haro():
        print(f'Hello, {name()}!')
    return haro

def get_name():
  name = input('Введите имя: ')
  return name

GBBS = decorator(get_name)
GBBS()
