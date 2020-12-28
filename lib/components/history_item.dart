import 'package:flutter/material.dart';
import 'package:calculadora/constants.dart';

class HistoryItem extends StatelessWidget {
  final String operation;

  final List<String> splitOperation;

  HistoryItem({this.operation, this.splitOperation});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      margin: EdgeInsets.all(2.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: kButtonBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            splitOperation[0],
            style: kHistoryItemTextStyle,
          ),
          Text(
            splitOperation[1],
            style: kHistoryItemOperationStyle,
          ),
          Text(
            splitOperation[2],
            style: kHistoryItemTextStyle,
          ),
          Text(
            splitOperation[3],
            style: kHistoryItemEqualsStyle,
          ),
          Text(
            splitOperation[4],
            style: kHistoryItemTextStyle,
          ),
        ],
      ),
    );
  }
}
