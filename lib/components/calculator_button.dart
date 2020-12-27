import 'package:flutter/material.dart';
import 'package:calculadora/constants.dart';

class CalculatorButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  CalculatorButton({@required this.child, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      fillColor: kButtonBackgroundColor,
      child: child,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      constraints: BoxConstraints.tightFor(
        height: 75.0,
        width: 75.0,
      ),
    );
  }
}
