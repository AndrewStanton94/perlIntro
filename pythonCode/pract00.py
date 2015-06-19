# Practical Worksheet 1: Getting started with Python
# Andrew Stanton, 683693
# September 2013

def sayHello():
    print("Hello world")

def count():
    for i in range(10):
        print(i)

def kilos2pounds():
    kilos = eval(input("Enter a weight in kilograms: "))
    pounds = 2.2 * kilos
    print("The weight in pounds is", pounds)
