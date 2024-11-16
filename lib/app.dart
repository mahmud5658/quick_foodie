import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/home.dart';

class QuickFoodie extends StatelessWidget {
  const QuickFoodie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
