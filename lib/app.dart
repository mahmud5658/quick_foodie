import 'package:flutter/material.dart';

import 'package:quick_foodie/pages/sign_up.dart';
import 'package:quick_foodie/pages/splash.dart';


class QuickFoodie extends StatelessWidget {
  const QuickFoodie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
