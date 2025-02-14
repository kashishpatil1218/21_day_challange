import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:daychallange/day_10/provider/cal_provider.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Calculator', style: TextStyle(color: Colors.white)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Display Screen
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Text(
              calculator.text,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              maxLines: 1,
            ),
          ),
          // Buttons Grid
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 19,
                itemBuilder: (context, index) {
                  // Define button text
                  final buttons = [
                    'AC',
                    '+/-',
                    '%',
                    '/',
                    '7',
                    '8',
                    '9',
                    'x',
                    '4',
                    '5',
                    '6',
                    '-',
                    '1',
                    '2',
                    '3',
                    '+',
                    '0',
                    '.',
                    '=',
                    '',
                  ];
                  final btnText = buttons[index];

                  return btnText.isNotEmpty
                      ? _buildButton(
                          text: btnText,
                          onTap: () => calculator.calculation(btnText),
                          isOperator: ['AC', '+', '-', 'x', '/', '=', '%']
                              .contains(btnText),
                        )
                      : SizedBox();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onTap,
    bool isOperator = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isOperator ? Colors.orange : Colors.grey[800],
          shape: text == '0' ? BoxShape.rectangle : BoxShape.circle,
          borderRadius: text == '0'
              ? BorderRadius.circular(
                  50,
                )
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: isOperator ? Colors.white : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
