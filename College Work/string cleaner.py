looping = True
while looping:
    name = input("Enter your name: ")
    for i in name:
        if not i.isalpha():
            name = name.replace(i, "")

    if name != "":
        print(f"Your name is {name}!")
        looping = False
    else:
        print("Nothing inputted")
    
