nums = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
sNum = input("enter a number: ")
integer = True

if sNum[0] == "-":
    neg = True
    sNum[0] = ""
else:
    neg = False
for i in sNum:
    if not i in nums:
        print(f"problem caused by {i}")
        integer = False

if neg:
    
if integer:
    print(f"{sNum} is an integer")
else:
    print(f"{sNum} is not an integer")