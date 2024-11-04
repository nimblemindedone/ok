def factorial(num):
    value = 1
    for i in range(1, num+1):
        value = value * i
    return value

def main():
    value = 5
    print(value)
    endVal = factorial(value)
    print(endVal)
    
main()