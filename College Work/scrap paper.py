num1 = input("input first starting number: ")
num2 = input("input second starting number: ")
loops = int(input("input amount numbers to find: "))-2
print(num1)
print(num2)

for i in range(loops//2):
    num1 = str(int(num1)+ int(num2))
    num2 = str(int(num1)+ int(num2))
    print(num1)
    print(num2)

for i in range(loops%2):
    num1 = str(int(num1)+ int(num2))
    print(num1)
