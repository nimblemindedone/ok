cVal = False
dVal = False
c = 0
d = 0
def createBoard(x, y):
    board = []
    for i in range(x):
        board.append([])
        for v in range(y):
            board[i].append("x")
    return board

def printBoard(x):
    for i in x:
        for v in i:
            print(v, end=" ")
        print()

def editBoard(x):
    aVal = False
    bVal = False
    a = 0
    b = 0
    while not(aVal and bVal):
        try:
            if not aVal:
                a = int(input("Enter the column position: "))
                if a>0 and a<=len(x):
                    aVal = True
                else:
                    print(f"column position must be bigger than 0 and smaller than {len(x)}")
            elif not bVal:
                b = int(input("Enter the row position: "))
                if b>0 and b<=len(x[0]):
                    bVal = True
                else:
                    print(f"row position must be bigger than 0 and smaller than {len(x)}")
            else:
                print("Skibiti")
        except:
            print("Input error")

    x[a-1][b-1] = "o"

while not(cVal and dVal):
    try:
        if not cVal:
            c = int(input("Enter column amount: "))
            if c>0:
                cVal = True
            else:
                print("Column amount should be larger than 0")
                
        elif not dVal:
            d = int(input("Enter row amount: "))
            if d>0:
                dVal = True
            else:
                print("Row amount should be larger than 0")
        else:
            print("Ohioo")
    except:
        print("Input error")
        
playerBoard = createBoard(c, d)

printBoard(playerBoard)

editBoard(playerBoard)

printBoard(playerBoard)
