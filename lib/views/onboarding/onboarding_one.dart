import 'package:flutter/material.dart';
import 'package:gym_fyp/views/onboarding/onboarding_two.dart';

import '../../utils/images/images.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({super.key});

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
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
            Positioned(
              top: size.height *0.05,
              left: size.width * 0.05,
              right: size.width * 0.05,
              child: Image.asset(onBoardingOneLogo)),
              Positioned(
                bottom: size.height*0.05,
                left: size.width *0.3,
                right: size.width*0.3,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    =>const OnboardingTwoScreen()));
                  },
                  child: Container(
                    width: size.width*0.3,
                    height: size.height*0.06,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("NEXT",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width *0.05
                      ),),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}