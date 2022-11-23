import 'package:flutter/material.dart';
import 'package:provider_bank/screens/balancehome.dart';
import 'package:provider_bank/screens/addamount.dart';

class RouterGenerator {
  var routerGenerate = ((settings) {
    var routeName = settings.name;

    switch (routeName) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SafeArea(child: BalanceHomeScreen()));

      case '/submit':
        return MaterialPageRoute(
            builder: (context) => SafeArea(child: AddAmountScreen()));
    }
    //return null;
  });
}
