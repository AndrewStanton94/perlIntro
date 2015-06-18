from math import *
def circumferenceOfCircle():
	print(2*pi*eval(input("What is the radius: ")))

def areaOfCircle():
	print(eval(input("Radius: "))**2*pi)

def costOfPizza():
	area = ( eval(input("Diameter [cm]: ")) /2 )**2 *pi
	print("The cost is", int(area/1.5), "p") #truncated to 1p

def getXY():
    ans = []
    retVals = []
    for i in ["X1", "X2", "Y1", "Y2"]:
        ans.append( eval(input("What is " + str(i) )) )
    retVals.append(ans[1] - ans[0])
    retVals.append(ans[3] - ans[2])
    return(retVals) #x,y

def slopeOfLine():
	ans = getXY()      #ret [X,Y]
	print("m =", ans[1] /ans[0])

def distanceBetweenPoints():
	ans = getXY()      #ret [X,Y]
	print(sqrt(ans[0]**2 + ans[1]**2))

def travelStatistics():
	Vel = eval(input("Average speed [km h^-1]: "))
	time = eval(input("Duration: "))
	s = Vel * time
	print("Distance:", s, "\nFuel used:", s/5)

def sumOfNumbers():	#from ex Start @1
	total = 0
	for i in range(eval(input("Number: "))):
		total = total +(i + 1)
	print(total)

def SsumOfNumbers():	#from spec Start @0
	total = 0
	for i in range(eval(input("Number: "))):
		total = total +i
	print(total)

def averageOfNumbers(): # using ex method start @1
    total = 0
    Upto = eval(input("Maximum value: "))
    for i in range(Upto):
        total = total + (i+1)
    print("Average is:", total/Upto)

def selectCoins():
    pence = int(input("Amount of money [p]:"))
    print("Denom\tQuantity")
    print("£2\t\tx", pence//200)
    pence = pence % 200
    print("£1\t\tx", pence//100)
    pence = pence % 100
    print("50p\t\tx", pence//50)
    pence = pence % 50
    print("20p\t\tx", pence//20)
    pence = pence % 20
    print("10p\t\tx", pence//10)
    pence = pence % 10
    print("5p\t\tx", pence//5)
    pence = pence % 5
    print("2p\t\tx", pence//2)
    pence = pence % 2
    print("1p\t\tx", pence//1)

def getDenom(d):
    if d < 100:
        return(str(d)+"p\t\tx")
    else:
        return("£"+str(d//100)+"\t\tx")

def bsc():
    pence = int(input("Amount of money [p]:"))
    denom = [200,100,50,20,10,5,2,1]
    print("Denom\tQuantity")
    for i in denom:
        print(getDenom(i), pence//i)
        pence = pence % i
