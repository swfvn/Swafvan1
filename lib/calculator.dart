import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = '0';
  double num1 = 0;
  double num2 = 0;
  String operand = '';
  String result = '';

  void buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      setState(() {
        display = '0';
        num1 = 0;
        num2 = 0;
        operand = '';
        result = '';
      });
    } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
      num1 = double.parse(display);
      operand = buttonText;
      setState(() {
        display = '0';
      });
    } else if (buttonText == '=') {
      num2 = double.parse(display);
      if (operand == '+') {
        result = (num1 + num2).toString();
      }
      if (operand == '-') {
        result = (num1 - num2).toString();
      }
      if (operand == '*') {
        result = (num1 * num2).toString();
      }
      if (operand == '/') {
        result = (num1 / num2).toString();
      }
      setState(() {
        display = result;
      });
    } else {
      if (display == '0') {
        setState(() {
          display = buttonText;
        });
      } else {
        setState(() {
          display = display + buttonText;
        });
      }
    }
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  display,
                  style: TextStyle(fontSize: 48.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                buildButton('7'),
                buildButton('8'),
                buildButton('9'),
                buildButton('/'),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton('4'),
                buildButton('5'),
                buildButton('6'),
                buildButton('*'),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('-'),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton('0'),
                buildButton('C'),
                buildButton('='),
                buildButton('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}