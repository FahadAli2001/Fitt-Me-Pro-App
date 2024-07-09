import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

class ArmsScreen extends StatefulWidget {
  const ArmsScreen({super.key});

  @override
  State<ArmsScreen> createState() => _ArmsScreenState();
}

class _ArmsScreenState extends State<ArmsScreen> {
  List<String> armsExc = [
    "assets/biceps.png",
    "assets/tricep.png",
    "assets/forearms.png"
  ];
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
          "ARMS EXCERCISES",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg)),
            Positioned(
              top: size.height * 0.05,
              child: SizedBox(
                height: size.height * 0.85,
                width: size.width,
                // color: Colors.amberAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: armsExc.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)
                            // =>const ArmsScreen()));
                          } else {}
                        },
                        child: SizedBox(
                          height: size.height * 0.2,
                          width: size.width * 0.8,
                          child: Image.asset(
                            armsExc[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
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
