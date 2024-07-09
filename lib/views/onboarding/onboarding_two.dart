import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';
import 'package:gym_fyp/views/login_screen/login_screen.dart';

class OnboardingTwoScreen extends StatefulWidget {
  const OnboardingTwoScreen({super.key});

  @override
  State<OnboardingTwoScreen> createState() => _OnboardingTwoScreenState();
}

class _OnboardingTwoScreenState extends State<OnboardingTwoScreen> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.sizeOf(context);
   return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg,
            )),
            Positioned(
              top: size.height *0.09,
              left: size.width * 0.05,
              right: size.width * 0.05,
              child: Image.asset(onBoardingTwoLogo,
              height: size.height*0.3,
              )),
              Positioned(
                bottom: size.height*0.05,
                left: size.width *0.3,
                right: size.width*0.3,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    =>const LoginScreen()));
                  },
                  child: Container(
                    width: size.width*0.3,
                    height: size.height*0.06,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("DONE",
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