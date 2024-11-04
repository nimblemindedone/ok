board = [["x", "x", "x", "x"], ["x", "x", "x", "x"], ["x", "x", "x", "x"], ["x", "x", "x", "x"], ["x", "x", "x", "x"], ["x", "x", "x", "x"]] 

looping = True 

while looping: 

    try: 

        x = int(input("Enter the first integer: "))-1 

        if x<1: 

            raise ValueError() 

        looping = False 

    except ValueError: 

        print("Enter valid int!") 

 

looping = True 

while looping: 

    try: 

        y = int(input("Enter the second integer: "))-1 

        if y<1: 

            raise ValueError() 

        looping = False 

    except ValueError: 

        print("Enter valid int!") 

 

board[x][y] = "O" 

 

for i in board: 

    for v in i: 

        print(v, end=" ") 

    print("\n") 