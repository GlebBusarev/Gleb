def calculator(a, b, op):
    print(eval(f'{a}{op}{b}'))

a = (int(input('Введите первое число: ' )))
b = (int(input('Введите второе число: ' )))
op = (str(input('Введите символ операции (+, -, *, /): ' )))

calculator(a, b, op)
