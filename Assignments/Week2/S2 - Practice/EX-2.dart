enum AccoutType { Saving, Flexi, Premium }
enum Currency { USD, EUR, KHR}

class BankAccount {
  // TODO
  final int _accountNumber;
  final String _accountHolder;
  final AccoutType _accountType;
  double _balance;
  final Currency _currency;
  final double _interestRate;

  BankAccount(
      {required int accountNumber,
      required String accountHolder,
      required AccoutType accountType,
      required double balance,
      required Currency currency,
      required double interestRate})
      : _accountNumber = accountNumber,
        _accountHolder = accountHolder,
        _accountType = accountType,
        _balance = balance,
        _currency = currency,
        _interestRate = interestRate;

  int get accountNumber => _accountNumber;
  String get accountHolder => _accountHolder;
  AccoutType get accountType => _accountType;
  double get balance => _balance;
  Currency get currency => _currency;
  double get interestRate => _interestRate;

  // double balance() {
  //   return _balance;
  // }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      throw Exception("Cannot withdraw your money");
    }
  }

  void credit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      throw Exception("Invalid deposit amount of money!");
    }
  }
}

class Bank {
  // TODO
  final List<BankAccount> _bankAccount = [];
  final String _name;

  Bank({required String name}) : _name = name;

  BankAccount createAccount(
      int accountId,
      String accountOwner,
      AccoutType accountType,
      double balance,
      Currency currency,
      double interestRate) {
    for (var account in _bankAccount) {
      if (account.accountNumber == accountId) {
        throw Exception("Account with ID $accountId already Exist");
      }
    }
    var newAccount = BankAccount(
        accountNumber: accountId,
        accountHolder: accountOwner,
        accountType: accountType,
        balance: balance,
        currency: currency,
        interestRate: interestRate);
    _bankAccount.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan',AccoutType.Saving, 0, Currency.USD, 1);

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy',AccoutType.Flexi, 0, Currency.KHR,2); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
