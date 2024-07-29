number=int(input("ente a number"))
if number<0:
    print("it is not existed")
elif number==0:
    print("0 is not a prime number")
elif number==1:
    print("it is not a prime number")
elif number>1:
    if number%2==0:
        print("this number is not a prime number,this is even number")  
    else:
        print(number,"is pime number")      