import 'package:calculadora/history.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/components/history_item.dart';

class HistoryPage extends StatelessWidget {
  final History operationsHistory;

  HistoryPage({this.operationsHistory});

  List<Widget> getHistoryWidgetList() {
    List<String> historyStrings = operationsHistory.getHistroy();
    List<Widget> widgetHistory = [];

    for (int i = 0; i < historyStrings.length; i++) {
      widgetHistory.add(
        HistoryItem(
          operation: historyStrings[i],
          splitOperation: historyStrings[i].split(' '),
        ),
      );
    }

    return widgetHistory;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          centerTitle: true,
          title: Text('History'),
        ),
        body: Container(
          child: ListView(
            children: getHistoryWidgetList(),
          ),
        ),
      ),
    );
  }
}
