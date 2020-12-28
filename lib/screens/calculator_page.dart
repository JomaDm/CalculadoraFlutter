import 'package:calculadora/constants.dart';
import 'package:calculadora/screens/history_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora/components/calculator_button.dart';
import 'package:calculadora/history.dart';

enum OperationType {
  suma,
  resta,
  mult,
  div,
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String contentTop = '';
  String contentBottom = '';
  String operation;
  History operationHistory = History();

  void addNumber(String number) {
    setState(() {
      contentBottom += number;
    });
  }

  void operationTypeWrite(OperationType opera) {
    //Calcular Res
    setState(() {
      if (operation != '' && contentTop!='') {
        equals();
      }
      contentTop = contentBottom;
      contentBottom = '';
      switch (opera) {
        case OperationType.suma:
          operation = '+';
          break;
        case OperationType.resta:
          operation = '-';
          break;
        case OperationType.mult:
          operation = 'x';
          break;
        case OperationType.div:
          operation = '/';
          break;
        default:
          print("error");
          break;
      }
    });
  }

  void equals() {
    double result;
    setState(() {
      switch (operation) {
        case '+':
          result = double.parse(contentTop) + double.parse(contentBottom);
          break;
        case '-':
          result = double.parse(contentTop) - double.parse(contentBottom);
          break;
        case 'x':
          result = double.parse(contentTop) * double.parse(contentBottom);
          break;
        case '/':
          if (contentBottom != '0') {
            result = double.parse(contentTop) / double.parse(contentBottom);
          } else {
            result = double.infinity;
          }
          break;
      }
      operationHistory.addToHistory(
        contentTop,
        operation,
        contentBottom,
        result != null ? result.toStringAsFixed(2) : '',
      );
      //operationHistory.printHistory();

      contentTop = '';
      operation = '';
      contentBottom = result != null ? result.toStringAsFixed(2) : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        contentTop == null ? '' : contentTop,
                        style: kTextAreaStyleTop,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        operation == null ? '' : operation,
                        style: kTextAreaStyleTop,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        contentBottom == null ? '' : contentBottom,
                        style: kTextAreaStyleBottom,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentBottom = '';
                              contentTop = '';
                              operation = '';
                            });
                          },
                          child: Text(
                            'CE',
                            style: kActionButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentBottom = '';
                            });
                          },
                          child: Text(
                            'C',
                            style: kActionButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentBottom = contentBottom.substring(
                                  0, contentBottom.length - 1);
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.backspace,
                            color: kActionButtonContentColor,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            operationTypeWrite(OperationType.div);
                          },
                          child: Icon(
                            FontAwesomeIcons.divide,
                            color: kOperationButtonContentColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () {
                            addNumber('7');
                          },
                          child: Text(
                            '7',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('8');
                          },
                          child: Text(
                            '8',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('9');
                          },
                          child: Text(
                            '9',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            operationTypeWrite(OperationType.mult);
                          },
                          child: Icon(
                            FontAwesomeIcons.times,
                            color: kOperationButtonContentColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () {
                            addNumber('6');
                          },
                          child: Text(
                            '6',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('5');
                          },
                          child: Text(
                            '5',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('4');
                          },
                          child: Text(
                            '4',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            operationTypeWrite(OperationType.resta);
                          },
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: kOperationButtonContentColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () {
                            addNumber('3');
                          },
                          child: Text(
                            '3',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('2');
                          },
                          child: Text(
                            '2',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            addNumber('1');
                          },
                          child: Text(
                            '1',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            operationTypeWrite(OperationType.suma);
                          },
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: kOperationButtonContentColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HistoryPage(
                                        operationsHistory: operationHistory,
                                      )),
                            );
                          },
                          child: Icon(
                            FontAwesomeIcons.history,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentBottom += '0';
                            });
                          },
                          child: Text(
                            '0',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentBottom += '.';
                            });
                          },
                          child: Text(
                            '.',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            equals();
                          },
                          child: Icon(
                            FontAwesomeIcons.equals,
                            color: kOperationButtonContentColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: kButtonAreaBackgroundColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
