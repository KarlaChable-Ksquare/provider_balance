import 'package:flutter/material.dart';
import 'package:provider_bank/screens/balance.dart';
import 'package:provider_bank/screens/submit.dart';

class RouterGenerator {
  var routerGenerate = ((settings) {
    var routeName = settings.name;

    switch (routeName) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SafeArea(child: BalanceScreen()));

      case '/submit':
        return MaterialPageRoute(
            builder: (context) => SafeArea(child: SubmitScreen()));
    }
    //return null;
  });
}
