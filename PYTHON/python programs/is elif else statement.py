#if else  if ladder in python
x=int(input("enter a vaue:"))
if x<0:
    print("the number is negative")
elif x==0:
    print("the number if zero")
elif x>0:
    print("thr number if possitive")
else:
    if x%2==0:
        print("the entered number if even")
    else:
        print("the number is odd")