import 'package:calculadora/components/text_area.dart';
import 'package:calculadora/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora/components/calculator_button.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String contentButt = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  contentButt == null ? '' : contentButt,
                  style: kTextAreaStyle,
                ),
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
                              contentButt = '';
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
                              contentButt = '';
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
                              contentButt = contentButt.substring(
                                  0, contentButt.length - 1);
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.backspace,
                            color: kActionButtonContentColor,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '/';
                            });
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
                            setState(() {
                              contentButt += '7';
                            });
                          },
                          child: Text(
                            '7',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '8';
                            });
                          },
                          child: Text(
                            '8',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '9';
                            });
                          },
                          child: Text(
                            '9',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '*';
                            });
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
                            setState(() {
                              contentButt += '6';
                            });
                          },
                          child: Text(
                            '6',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '5';
                            });
                          },
                          child: Text(
                            '5',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '4';
                            });
                          },
                          child: Text(
                            '4',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '-';
                            });
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
                            setState(() {
                              contentButt += '3';
                            });
                          },
                          child: Text(
                            '3',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '2';
                            });
                          },
                          child: Text(
                            '2',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '1';
                            });
                          },
                          child: Text(
                            '1',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '+';
                            });
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
                            setState(() {
                              contentButt += 'h';
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.history,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '0';
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
                              contentButt += '.';
                            });
                          },
                          child: Text(
                            '.',
                            style: kNumberButtonStyle,
                          ),
                        ),
                        CalculatorButton(
                          onPressed: () {
                            setState(() {
                              contentButt += '=';
                            });
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
