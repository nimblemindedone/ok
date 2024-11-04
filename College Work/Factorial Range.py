def factorial(num):
    value = 1
    for i in range(1, num+1):
        value = value * i
    return value

start = int(input("Enter start number"))
end = int(input("Enter end number"))

for i in range(start, end+1):
    print(factorial(i))
