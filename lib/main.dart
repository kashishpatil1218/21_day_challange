import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'day_10/calculator.dart';
import 'day_10/provider/cal_provider.dart'; // Import your provider
import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>CalculatorProvider(),
      child: MaterialApp(
        home: CalculatorScreen(),
      ),
    );
  }
}
