class BankAccount {
  String _accountNumber;  // Private variable
  double _balance;        // Private variable

  BankAccount(this._accountNumber, this._balance);

  // Getter for account number
  String get accountNumber => _accountNumber;

  // Getter for balance (controlled access)
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money (controlled access)
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient funds.");
    }
  }
}

void main() {
  BankAccount account = BankAccount('123456789', 1000.0);
  print('Account Number: ${account.accountNumber}');
  print('Balance: ${account.balance}');
  
  account.deposit(500);
  print('Balance after deposit: ${account.balance}');
  
  account.withdraw(300);
  print('Balance after withdrawal: ${account.balance}');
}
