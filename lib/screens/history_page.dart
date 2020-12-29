import 'package:calculadora/history.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/components/history_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora/constants.dart';

//TODO: boton para vaciar historial
class HistoryPage extends StatefulWidget {
  final History operationsHistory;

  HistoryPage({this.operationsHistory});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Widget> getHistoryWidgetList() {
    List<String> historyStrings = widget.operationsHistory.getHistroy();
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
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.trash,
              ),
              onPressed: () {
                setState(() {
                  widget.operationsHistory.clearHistory();
                });
                print('cleared');
              },
            )
          ],
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
