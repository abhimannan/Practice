number=int(input("enter the number"))

    
factorial=1    
if number<0:
    print("factorial oof the number is not existed")
elif number==0:
    print("the factorial of 0 is 1")
elif number>0:
    for i in range(2,number+1):
        result=factorial*(factorial-i)
        print(result)