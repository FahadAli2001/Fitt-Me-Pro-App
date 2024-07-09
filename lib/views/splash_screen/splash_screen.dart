import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';
import 'package:gym_fyp/views/onboarding/onboarding_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnboardingOneScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg)),
            Center(child: Image.asset(appLogo)),
          ],
        ),
      ),
    );
  }
}
