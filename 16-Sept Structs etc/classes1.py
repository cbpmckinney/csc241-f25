class Customer:

    def __init__(self, balance:float, name:str, age:int):

        self.balance = balance
        self.name = name
        self.age = age

    def PrintCustomerInfo(self):
        print("Customer " + self.name + " is " + str(self.age) + " years old")



Steve = Customer(2500.00, "Steve", 35)
Steve.PrintCustomerInfo()