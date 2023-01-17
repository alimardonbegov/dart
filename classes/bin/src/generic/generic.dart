class Product<T> {
  T id;
  final String name;
  final double price;
  Product(this.id, this.name, this.price);

  T geId() => id;
  void setId(T idProduct) => id = idProduct;

  @override
  String toString() {
    return "Product $name with id $id costs $price dollars";
  }
}

// ! another example

class Account {
  int account;
  int sum;
  Account(this.account, this.sum);

  void showRemainSum() {
    print("$account: $sum dollars");
  }
}

class Transaction<T extends Account> {
  T fromAccount;
  T toAccount;
  int sumTransaction;
  Transaction(this.fromAccount, this.toAccount, this.sumTransaction);

  void execute() {
    if (fromAccount.sum > sumTransaction) {
      fromAccount.sum -= sumTransaction;
      toAccount.sum += sumTransaction;
      print(
          "Transfered from ${fromAccount.account} to ${toAccount.account} on $sumTransaction dollars");
    } else {
      print(
          "Sorry, but there are not enougth money. Balance on sender's account is ${fromAccount.sum}. You try to transer $sumTransaction dollars");
    }
  }
}
