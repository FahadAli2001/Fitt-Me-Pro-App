import 'package:flutter/material.dart';

import '../../utils/images/images.dart';

class ExcsPlanScreen extends StatefulWidget {
  const ExcsPlanScreen({super.key});

  @override
  State<ExcsPlanScreen> createState() => _ExcsPlanScreenState();
}

class _ExcsPlanScreenState extends State<ExcsPlanScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "EXCERCISE PLAN",
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
              child: Image.asset("assets/chart.png"),
            ),
           
          ],
        ),
      ),
    );
  }
}