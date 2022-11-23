import 'package:flutter/material.dart';
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
    return Row(
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
            //isIncExp
            width: 80,
            child: Text(
              isIncExp == true ? '+ $amount' : '- $amount',
              //style: CustomTheme.amount,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                  color: isIncExp == true
                      ? const Color.fromRGBO(86, 179, 143, 1)
                      : const Color.fromRGBO(193, 84, 106, 1)),
              textAlign: TextAlign.right,
            ))
      ],
    );
  }
}
