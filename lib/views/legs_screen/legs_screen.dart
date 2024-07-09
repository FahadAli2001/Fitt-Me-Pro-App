import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

class LegsScreen extends StatefulWidget {
  const LegsScreen({super.key});

  @override
  State<LegsScreen> createState() => _LegsScreenState();
}

class _LegsScreenState extends State<LegsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "LEGS EXCERCISES",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset("assets/legs_exc.png"),
            ),
            Positioned(
              bottom: size.height * 0.12,
              left: 15,
              right: 15,
              child: const Text(
                "- Don’t put too much weight on legs that causes big injury.",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
