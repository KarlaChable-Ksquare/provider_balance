import 'package:flutter/material.dart';
import 'package:provider_bank/model/amount.dart';

class BankProvider extends ChangeNotifier {
  List<Amount> amounts = [];

  void addAmountIncome(String title, String descrip, int amount, bool isIncExp,
      String createdTime) {
    Amount amountBank = Amount(
        title: title,
        description: descrip,
        amount: amount,
        isIncExp: isIncExp,
        createdTime: createdTime);
    amounts.add(amountBank);
    notifyListeners();
  }

  //get getAmountCount => amounts.length;

  num getBalanceAcount() {
    num balance = 0;
    for (var value in amounts) {
      if (value.isIncExp) {
        balance = balance + value.amount;
      } else {
        balance = balance - value.amount;
      }
    }
    return balance;
  }
}
