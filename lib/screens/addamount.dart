import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_bank/constant/text_data.dart';
import 'package:provider_bank/constant/widgets.dart';
import 'package:provider_bank/providers/bank_provider.dart';
import 'package:provider_bank/utils/functions.dart';
import 'package:provider_bank/utils/theme.dart';

enum Valor { income, expense }

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen({Key? key}) : super(key: key);

  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _amountCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();
  Valor? _valor = Valor.income;
  bool isIncExp = true;

  void clearText() {
    _titleCtrl.clear();
    _amountCtrl.clear();
    _descCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextData.pageSub),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(TextData.income, style: CustomTheme.inexp),
                    leading: Radio<Valor>(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.primaryColor),
                      focusColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.secondaryColor),
                      value: Valor.income,
                      groupValue: _valor,
                      onChanged: (Valor? value) {
                        setState(() {
                          _valor = value;
                          isIncExp = true;
                          //print(value);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(TextData.expense, style: CustomTheme.inexp),
                    leading: Radio<Valor>(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.secondaryColor),
                      focusColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.primaryColor),
                      value: Valor.expense,
                      groupValue: _valor,
                      onChanged: (Valor? value) {
                        setState(() {
                          _valor = value;
                          isIncExp = false;
                          //print(value);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Wds().sBox18(),
            TextField(
              key: const Key('titleTextField'),
              controller: _titleCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: TextData.title,
              ),
            ),
            Wds().sBox12(),
            TextField(
              key: const Key('amountTextField'),
              controller: _amountCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(5)],
              decoration: InputDecoration(
                labelText: TextData.amount,
              ),
            ),
            Wds().sBox12(),
            TextField(
              key: const Key('descTextField'),
              controller: _descCtrl,
              keyboardType: TextInputType.text,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: TextData.descr,
              ),
            ),
            Wds().sBox32(),
            ElevatedButton(
              key: const Key('submitButton'),
              onPressed: () {
                if (_titleCtrl.text.isNotEmpty &&
                    _descCtrl.text.isNotEmpty &&
                    _amountCtrl.text.isNotEmpty) {
                  if (_valor == Valor.income) {
                    //print('Income True');
                    //print(timeNow);
                    Provider.of<BankProvider>(
                      context,
                      listen: false,
                    ).addAmountIncome(
                        _titleCtrl.text,
                        _descCtrl.text,
                        int.parse(_amountCtrl.text),
                        isIncExp,
                        Functions.timeNow());
                    clearText();
                  }

                  if (_valor == Valor.expense) {
                    //print('Expense True');
                    //print(timeNow);
                    Provider.of<BankProvider>(
                      context,
                      listen: false,
                    ).addAmountIncome(
                        _titleCtrl.text,
                        _descCtrl.text,
                        int.parse(_amountCtrl.text),
                        isIncExp,
                        Functions.timeNow());
                    clearText();
                  }
                } else {
                  //añadir snackbar
                  print(TextData.error);
                }
              },
              child: Text(TextData.submit),
            )
          ],
        ),
      ),
    );
  }
}
