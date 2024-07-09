import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

class ShoulderScreen extends StatefulWidget {
  const ShoulderScreen({super.key});

  @override
  State<ShoulderScreen> createState() => _ShoulderScreenState();
}

class _ShoulderScreenState extends State<ShoulderScreen> {
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
          "SHOULDER EXCERCISES",
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
              child: Image.asset("assets/shoulder_exc.png"),
            ),
            Positioned(
              bottom: size.height * 0.3,
              left: 15,
              right: 15,
              child: const Text(
                "- Warm up with light cardio and dynamic stretches. Use proper form for all exercises. Start with light weights and gradually increase. Stop if you feel pain. Cool down with light cardio and static stretches. See a doctor if you already have shoulder pain.",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}