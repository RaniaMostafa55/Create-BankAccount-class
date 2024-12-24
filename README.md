Create BankAccount class

A new Dart project.

## Getting Started

This project helps you simulate an ATM system with these steps:
1. Create a "BankAccount" class with two variables called "accountID" and "balance"
2. Create two constructors in the class, the first one requires both variables "accountID" and "balance" but the second one is a named costructors which makes the "accountID" required but the "balance" is optional and initialized by 0
3. Create a method called "withdraw" which takes a certian amount as a parameter and checks if it's a positive amount and less than or equal to the balance, then, the amount will be withdrawn successfully, otherwise, ask the user to enter a valid amount
4. Create a method called "deposit" which takes a certian amount as a parameter and checks if it's a positive amount, then, the amount will be deposited successfully, otherwise, ask the user to enter a valid amount
5. Create a method called "displayAccountInfo" which prints the account id and balance
6. After that, create the main function, in which, create two objects from the "BankAccount" class, the first one used the default constructor but the second one used the named constructor
7. For both objects, ask the user to enter the amount he wants to deposit then deposit it if it's a valid amount using "deposit" method, but if it's not a valid amount, print a message to say that to the user
8. For both objects, ask the user to enter the amount he wants to withdraw then withdraw it if it's a valid amount using "withdraw" method, but if it's not a valid amount, print a message to say that to the user
9. Use the "displayAccountInfo" method to print the account id and balance of each object 