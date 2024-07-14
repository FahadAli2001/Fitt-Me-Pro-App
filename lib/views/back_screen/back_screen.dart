import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

class BackExcersices extends StatefulWidget {
  const BackExcersices({super.key});

  @override
  State<BackExcersices> createState() => _BackExcersicesState();
}

class _BackExcersicesState extends State<BackExcersices> {
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
          "BACK EXCERCISES",
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
              child: Image.asset("assets/back_excs.png"),
            ),
            Positioned(
              bottom: size.height * 0.2,
              left: 15,
              right: 15,
              child: const Text(
                "- Do muscle-strengthening and stretching exercises at least 2 days a week. Stand and sit up straight. Avoid heavy lifting. If you do lift something heavy, bend your knees and keep your back straight. ... Aim for a healthy weight.",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
