import 'package:flutter/material.dart';
import 'package:flutter_tasks2/MobileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: todo(),
    );
  }
}
