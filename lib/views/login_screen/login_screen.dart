import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';
import 'package:gym_fyp/views/navigation_bar/navigation_bar_screen.dart';
import 'package:gym_fyp/views/signup_screen/signup_screen.dart';
import 'package:gym_fyp/widgets/custom_textfield/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  hintText: "Email",
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.55,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  hintText: "Password",
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.65,
              left: size.width * 0.3,
              right: size.width * 0.3,
              child: GestureDetector(
                onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const   NavigationBarScreen()));
                },
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "LOGIN",
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
              top: size.height * 0.8,
              child: GestureDetector(
                onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: const Text(
                  "Haven't account yet ? Sign Up",
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
