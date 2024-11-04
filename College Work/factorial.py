def factorial(num):
    val = 1
    for i in range(1, num+1):
        val = val * i
    return val

value = int(input("Enter a factorial: "))
endVal = factorial(value)
print("result is " + str(endVal))
