import 'dart:io';

//create a "BankAccount" class with two variables "accountID & balance"
class BankAccount {
  String accountID;
  double balance;
  //create a default instructor to assign values to class variables
  BankAccount(this.accountID, this.balance);
  //create a named constructor to assign values to class variables
  BankAccount.withInitializedBalance(
      {required this.accountID, this.balance = 0});
  //create "withdraw" method to decrease balance with a certain amount of money
  void withdraw(double amount) {
    if (amount > 0 && amount <= this.balance) {
      this.balance -= amount;
      print("$amount withdrawn successfully");
    } else {
      print("You should enter a valid amount");
    }
  }

  //create "deposit" method to increase balance with a certain amount of money
  void deposit(double amount) {
    if (amount > 0) {
      this.balance += amount;
      print("$amount deposited successfully");
    } else {
      print("You should enter a valid amount");
    }
  }

  //create "displayAccountInfo" to print the account id and balance
  void displayAccountInfo() {
    print("Account id is: ${this.accountID}");
    print("The current balance is ${this.balance}");
  }
}

void main() {
  //create "account 1" object with an account id and initial balance
  BankAccount account1 = BankAccount('12345', 1000);
  //ask the user to enter an amount to deposit then add it to balance using "deposit" method
  print("Enter amount to deposit");
  try {
    double amount = double.parse(stdin.readLineSync()!);
    account1.deposit(amount);
  } catch (e) {
    //if the user entered invalid amount this message will be printed
    print("You should enter a valid amount");
  }
  //ask the user to enter an amount to withdraw then subtract it from balance using "withdraw" method
  print("Enter amount to withdraw");
  try {
    double amount = double.parse(stdin.readLineSync()!);
    account1.withdraw(amount);
  } catch (e) {
    //if the user entered invalid amount this message will be printed
    print("You should enter a valid amount");
  }
  //print the account id and balance using "displayAccountInfo" method
  account1.displayAccountInfo();

  print('--------------------------------');
  //create "account 2" object with an account id only
  BankAccount account2 = BankAccount.withInitializedBalance(accountID: '6789');
  //ask the user to enter an amount to deposit then add it to balance using "deposit" method
  print("Enter amount to deposit");
  try {
    double amount = double.parse(stdin.readLineSync()!);
    account2.deposit(amount);
  } catch (e) {
    //if the user entered invalid amount this message will be printed
    print("You should enter a valid amount");
  }
  //ask the user to enter an amount to withdraw then subtract it from balance using "withdraw" method
  print("Enter amount to withdraw");
  try {
    double amount = double.parse(stdin.readLineSync()!);
    account2.withdraw(amount);
  } catch (e) {
    //if the user entered invalid amount this message will be printed
    print("You should enter a valid amount");
  }
  //print the account id and balance using "displayAccountInfo" method
  account2.displayAccountInfo();
}
