#-------------------------------------------------------------------------------
# Andrew Stanton
# 683693
# Autumn Teaching Block
#-------------------------------------------------------------------------------
from math import *
def sayName():
    print("Andrew Stanton")

def sayHello2():
    print("Hello\nWorld")

def euros2pounds():
    euros = eval(input("Enter ammount in euros"))
    ER = 1.15
    print(euros, "Euros is", round(euros/ER,2), "Pounds\nAssuming an exchange rate of", ER)

def addUp():
    num1 = eval(input("First Number: "))
    num2 = eval(input("Second number: "))
    print(num1 + num2)

def changeCounter():
    OneP = eval(input("How many 1p coins: "))
    TwoP = eval(input("How many 2p coins: "))
    FiveP = eval(input("How many 5p coins: "))
    print("Total ammount is:", (FiveP*5) + (TwoP * 2) + OneP, "p")

def TenHellos():
    for i in range(10):
        print("Hello World!")

def MyCount():
    for i in range(10):
        print(i+1)

def weightsTable():
    print("Kg\t\t Pounds")
    for i in [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]:
        print(i, "\t\t", round(i*2.2,0))

def futureValue():
    ammount = eval(input("Ammount to be invested: "))
    time = eval(input("How many years to invest for: "))
    for i in range(time):
        ammount = ammount * 1.055
    print("£", round(ammount,2), "after", time, "years")