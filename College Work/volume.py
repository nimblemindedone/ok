def calculate_volume(width, depth, height):
    vol = width*depth*height
    return vol

def main():
    iWidth = int(input("Enter width: "))
    iDepth = int(input("Enter depth: "))
    iHeight = int(input("Enter height"))
    volume = calculate_volume(iWidth, iDepth, iHeight)
    print(volume)

main()