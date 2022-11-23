import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bank/constant/text_data.dart';
import 'package:provider_bank/custom_widgets/bank_card.dart';
import 'package:provider_bank/custom_widgets/listmoves_card.dart';
import 'package:provider_bank/model/amount.dart';
import 'package:provider_bank/providers/bank_provider.dart';
import 'package:provider_bank/utils/theme.dart';

class BalanceHomeScreen extends StatelessWidget {
  const BalanceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const BankCard(),
            Expanded(
              child: Consumer<BankProvider>(
                builder: ((context, obj, child) {
                  List<Amount> amounts = obj.amounts;
                  //print(amounts.length);
                  if (amounts.isNotEmpty) {
                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        32,
                        18,
                        32,
                        0,
                      ),
                      itemCount: amounts.length,
                      itemBuilder: ((context, index) {
                        Amount amount = amounts[index];
                        return Container(
                          height: 76,
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          alignment: Alignment.topCenter,
                          color: CustomTheme.cw,
                          child: ListMoves(
                              title: amount.title,
                              description: amount.description,
                              amount: amount.amount,
                              createdTime: amount.createdTime,
                              isIncExp: amount.isIncExp),
                        );
                      }),
                    );
                  } else {
                    return Center(
                        child: Text(
                      TextData.mesagge,
                      style: CustomTheme.message,
                    ));
                  }
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
