#inheritance
#multiple inheritance
class father:
    def fun1(self):
        print("this is the father class")
class mother:
          
        def fun2(self):
           print("this the child2 class")
class child(father,mother):
    def fun3(self):
        print("this is the child2 class")
obj=child()


obj.fun1()
obj.fun2()
obj.fun3()