distance = 0

while distance<1:
    distance = int(input("How far should we count?"))
    if distance<1:
        print("Not a valid number, please try again.")
    else:
        break

for i in range(1,distance+1):
    if i%3 == 0 and i%5 == 0:
        print("FizzBuzz")
    elif i%3 == 0:
        print("Fizz")
    elif i%5 == 0:
        print("Buzz")
    else:
        print(i)