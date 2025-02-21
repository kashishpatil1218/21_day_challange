// import 'package:daychallange/day_3/custom_paint_day_3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'day 13/home_screen.dart';
import 'day_10/calculator.dart';
import 'day_10/provider/cal_provider.dart'; // Import your provider
import 'package:flutter/material.dart';

import 'day_15/ContextMenu.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContextMenu(),
      ),
    );
  }
}
