#-------------------------------------------------------------------------------
# Andrew Stanton
# 683693
# Autumn Teaching Block
#-------------------------------------------------------------------------------
from graphics import *
def personalGreeting():
    Name = input("What is your name: ")
    Name = Name.capitalize()
    strOut =  "Hello {0}, nice to see you.".format(Name)
    print(strOut)

def formalName():
    FirstName = input("First Name: ").capitalize()
    LastName = input("Last Name: ").capitalize()
    strOut = "{0}. {1}".format(FirstName[0], LastName)
    print(strOut)

def kilos2pounds():
    kilos = eval(input("Enter a weight in kilograms: "))
    pounds = 2.2 * kilos
    print("The weight in pounds is {0:0.2f}".format(pounds))

def generateEmail():
    FirstName = input("First Name: ").lower()
    LastName = input("Last Name: ").lower()
    Year = input("Year of entry")
    strOut ="{0}.{1}.{2}@myport.ac.uk".format(LastName[:4], FirstName[0],
                                                Year[2:])
    print(strOut)

def gradeTest():
    Grades = "FFFFCCBBAAA"
    Score = int(eval(input("Score: ")))
    print(Grades[Score])

def graphicLetters():
    Word = input("Give me a word: ")
    win = GraphWin()
    for ch in Word:
        p = win.getMouse()
        Label = Text(p, ch)
        Label.setSize(20)
        Label.draw(win)

def singASong():
    Lyric = input("Lyric: ")
    Lines = int(input("Lines: "))
    LyricsPerLine = int(input("How many lyrics per line: "))
    if Lyric[-1] != " ":
        Lyric += " "
    for i in range(Lines):
        print(Lyric*LyricsPerLine)

def exchangeTable():
    print("{0}\t{1}".format("Euros", "Pounds"))
    for i in range(0, 21):
        print("{0:5}\t{1:5.2f}".format(i, i/1.15))

def makeAcronym():
    strIn = input("Word to generate acronym for: ")
    strList = strIn.split()
    for word in strList:
        print(word[0].capitalize() , end="")

def nameToNumber():
    strIn = input("Name: ")
    total = 0
    for ch in strIn:
        total += ord(ch)
    print("{0} has the value of {1}".format(strIn, total))

def fileInCaps():
    filename = input("Filename: ")
    file = open(filename, "r")
    content = file.read()
    content = content.upper()
    print(content)
    file.close()

def rainfallChart():
    filestream = open("rainfall.txt", "r")
    for lines in filestream:
        data = lines.split()
        strOut = "{0:<14}{1}".format(data[0]+":", "*"*int(data[1]))
        print(strOut)
    filestream.close()

def rainfallInInches():
    filestreamIn = open("rainfall.txt", "r")
    theData = filestreamIn.readlines()
    filestreamIn.close()
    filestreamOut = open("rainfallInches.txt", "w")
    for lines in theData:
        data = lines.split()
        strOut = "{0:<14}{1:0.2f}".format(data[0], float(data[1])/25.4)
        print(strOut, file=filestreamOut)
    filestreamOut.close()

def wc():
    filePath = input("Name of file: ")
    filestream = open(filePath, "r")
    data = filestream.readlines()
    print("Number of lines: {0}".format(len(data)))
    noOfWords, noOfChars = 0, 0
    for lines in data:
        noOfChars += len(lines)
        noOfWords += len(lines.split())
    print("Number of words: {0}".format(noOfWords))
    print("Number of characters: {0}".format(noOfChars))
    print(data[0])
    print(len(data[0]))