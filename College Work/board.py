cVal = False
dVal = False
c = 0
d = 0
def createBoard(columnLength, rowLength):
    board = []
    for columns in range(columnLength):
        board.append([])
        for v in range(rowLength):
            board[columns].append("columnLength")
    return board

def printBoard(Board):
    for row in Board:
        for column in row:
            print(column, end=" ")
        print()

def editBoard(tempBoard):
    aVal = False
    bVal = False
    a = 0
    b = 0
    while not(aVal and bVal):
        try:
            if not aVal:
                a = int(input("Enter the column position: "))
                if a>0 and a<=len(tempBoard):
                    aVal = True
                else:
                    print(f"column position must be bigger than 0 and smaller than {len(tempBoard)}")
            elif not bVal:
                b = int(input("Enter the row position: "))
                if b>0 and b<=len(tempBoard[0]):
                    bVal = True
                else:
                    print(f"row position must be bigger than 0 and smaller than {len(tempBoard[0])}")
            else:
                print("Skibiti")
        except:
            print("Input error")

    tempBoard[a-1][b-1] = "o"

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