import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

import '../../widgets/custom_textfield/custom_textfield.dart';

 class SignUpScreen extends StatefulWidget {
   const SignUpScreen({super.key});
 
   @override
   State<SignUpScreen> createState() => _SignUpScreenState();
 }
 
 class _SignUpScreenState extends State<SignUpScreen> {
   @override
   Widget build(BuildContext context) {
        Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 0, child: Image.asset(topBg)),
            Positioned(
              top: size.height * 0.2,
              child: Image.asset(
                appLogo,
                height: size.height * 0.2,
              ),
            ),
             Positioned(
              top: size.height * 0.45,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  hintText: "Name",
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.55,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  hintText: "Email",
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.65,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  hintText: "Password",
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.75,
              left: size.width * 0.3,
              right: size.width * 0.3,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.85,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "Already have an account yet ? Log In",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
   }
 }