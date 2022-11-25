import 'package:flutter/material.dart';
import 'package:provider_bank/constant/text_data.dart';
import 'package:provider_bank/constant/widgets.dart';
import 'package:provider_bank/utils/functions.dart';
import 'package:provider_bank/utils/theme.dart';

class ListMoves extends StatelessWidget {
  String title;
  String description;
  num amount;
  bool isIncExp;
  String createdTime;

  ListMoves(
      {super.key,
      required this.title,
      required this.description,
      required this.amount,
      required this.isIncExp,
      required this.createdTime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('showDialogTap'),
      onTap: (() {
        showDialog(
            context: context,
            builder: ((context) {
              return SimpleDialog(
                backgroundColor: CustomTheme.dialogBack(isIncExp),
                title: Text(
                  TextData.dialog,
                  style: CustomTheme.balance,
                  textAlign: TextAlign.center,
                ),
                children: <Widget>[
                  SimpleDialogOption(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${TextData.title}: $title',
                          style: CustomTheme.title,
                        ),
                        Wds().sBox12(),
                        Text(
                          '${TextData.descr}: $description',
                        ),
                        Wds().sBox08(),
                        Text(
                          '${TextData.amount}: ' +
                              Functions.textInEx(isIncExp, amount),
                          style: CustomTheme.isInEx(isIncExp),
                        ),
                        Wds().sBox08(),
                        Text(
                          '${TextData.created}: $createdTime',
                          style: CustomTheme.time,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }));
      }),
      child: Row(
        children: [
          SizedBox(
            width: 240,
            child: ListTile(
              title: Text(
                title,
                style: CustomTheme.title,
                overflow: TextOverflow.clip,
                softWrap: false,
              ),
              subtitle: Text(
                createdTime,
                style: CustomTheme.time,
              ),
            ),
          ),
          SizedBox(
              width: 80,
              child: Text(
                Functions.textInEx(isIncExp, amount),
                style: CustomTheme.isInEx(isIncExp),
                textAlign: TextAlign.right,
              ))
        ],
      ),
    );
  }
}
