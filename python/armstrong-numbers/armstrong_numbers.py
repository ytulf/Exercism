def is_armstrong(number):
    n = str(number)
    return number == sum(int(d)**len(n) for d in n)
