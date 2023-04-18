Задача №1
def countdown(n):
    for i in range(n, -1):
        yield i
gen = countdown(10)
for i in gen:
    print(i)

#-b
def countdown(n):
    for i in range(n, -1, -1):
        yield i

gen = countdown(10)
for i in range(11):
    print(next(gen))
    
Задача №2
def alphabet():
    for i in range(97, 123):
        yield chr(i)

gen = alphabet()
for i in range(26):
    print(next(gen))
    
Задача №4
itr = iter([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])

#1
for i in range(10):
    print(next(itr))

#2
for i in itr:
    print(i)
    
Задача №5
def evengen():
    for n in range(21):
        if n % 2 == 0:
            yield n

evenlist = list(evengen())
print(evenlist)


Задача №6
def alphabet(n):
    return {i: chr(i + 97) for i in range(1, n+1)}

dict = alphabet(23)
print(dict)
