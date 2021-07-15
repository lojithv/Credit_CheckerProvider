import 'package:flutter/material.dart';
// import 'demo1.dart';
import 'basic_code_snippet_ui.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider State Management',
      home: EligibilityScreen()
    );
  }
}