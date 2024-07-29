#functions
#example:addition of 2 numbers
'''def addition(a,b):
    c=a+b
    return c
a=int(input("enter a value:"))
b=int(input("enter the b value:"))
result=addition(a,b)
print(result)'''
#types of arguments:
#1.required arguments(positional arguments)
#2.keyword arguments
#3.default arguments
def dis(name,course="btech"):
    print(name)
    print(course)
dis(name="geetha",course="mtech") 
dis(name="kumar")
dis(name="vijay")