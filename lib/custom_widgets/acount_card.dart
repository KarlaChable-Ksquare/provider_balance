import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bank/constant/text_data.dart';
import 'package:provider_bank/constant/widgets.dart';
import 'package:provider_bank/providers/bank_provider.dart';
import 'package:provider_bank/screens/submit.dart';
import 'package:provider_bank/utils/theme.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: CustomTheme.primaryColor,
        height: 412,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(TextData.balance, style: CustomTheme.balance),
            Wds().sBox24(),
            SizedBox(
              child: Text(
                  TextData.$ +
                      Provider.of<BankProvider>(context)
                          .getBalanceAcount()
                          .toString() +
                      TextData.money,
                  textAlign: TextAlign.center,
                  style: CustomTheme.money),
            ),
            Wds().sBox64(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubmitScreen(),
                    ),
                  );
                },
                child: Text(TextData.create)),
            Wds().sBox56(),
          ],
        ),
      ),
    );
  }
}
