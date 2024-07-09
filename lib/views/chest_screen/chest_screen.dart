import 'package:flutter/material.dart';

import '../../utils/images/images.dart';

class ChestScreen extends StatefulWidget {
  const ChestScreen({super.key});

  @override
  State<ChestScreen> createState() => _ChestScreenState();
}

class _ChestScreenState extends State<ChestScreen> {
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
          "CHEST EXCERCISES",
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
              child: Image.asset("assets/chest_exc.png"),
            ),
            Positioned(
              bottom: size.height * 0.2,
              left: 15,
              right: 15,
              child: const Text(
                "- Include chest presses in your fitness routine two to three times per week. Allow for at least one day of rest in between training to avoid overtraining muscle groups. Balance out your chest workouts with shoulder strengthening. This helps to prevent injuries from lifting loads that are too heavy for your shoulders",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}