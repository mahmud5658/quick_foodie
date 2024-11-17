

import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/onboard.dart';
import 'package:quick_foodie/utils/asset_path.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFff5c30),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(AssetsPath.logo),
              const Spacer(),
              const CircularProgressIndicator(
                color: Colors.yellow,
                strokeWidth: 3,
              ),
              const Text(
                'Version 1.0',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Onboard()));
  }
}