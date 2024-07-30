import 'package:flutter/material.dart';
import 'package:gym_fyp/controller/bmi_controller/bmi_controller.dart';
import 'package:provider/provider.dart';

import '../../utils/images/images.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "BMI",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg)),
            Center(
              child: SizedBox(
                  height: size.height * 0.7,
                  width: size.width * 0.8,
                  child: Consumer<BmiController>(
                    builder: (context, value, child) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          value.isMale = true;
                                        },
                                        child: const Card(
                                          elevation: 10,
                                          color: Colors.black,
                                          child: Center(
                                            child: Text(
                                              "MALE",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          value.isMale = false;
                                        },
                                        child: const Card(
                                          elevation: 10,
                                          color: Colors.black,
                                          child: Center(
                                            child: Text(
                                              "FEMALE",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Height : ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 70,
                                      child: Card(
                                        elevation: 10,
                                        color: Colors.black,
                                        child: Center(
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                          cursorColor: Colors.white,
                                          style:const TextStyle(color: Colors.white),
                                          controller: value.heightController,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                               const SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                   const Text(
                                    "Weight : ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                   Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70,
                                      child: Card(
                                        elevation: 10,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            value.weight,
                                            style:const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                 
                                 
                                ],
                              ),
                             const Spacer(),
                               SizedBox(
                                    height: 70,
                                    width: size.width,
                                    child: GestureDetector(
                                      onTap: () {
                                         
                                      },
                                      child: const Card(
                                        elevation: 10,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "Calculate",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                               const   SizedBox(height: 20,),
                                  GestureDetector(
                                    onTap: () {
                                      value.heightController.clear();
                                      value.isMale = true;
                                      value.weight = '';
                                    },
                                    child:const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                  ),

                                           const   SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
