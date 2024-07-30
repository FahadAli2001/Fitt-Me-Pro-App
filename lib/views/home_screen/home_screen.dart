
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym_fyp/views/arms_screen/arms_screen.dart';
import 'package:gym_fyp/views/back_screen/back_screen.dart';
import 'package:gym_fyp/views/chest_screen/chest_screen.dart';
import 'package:gym_fyp/views/shoulder_screen/shoulder_screen.dart';

import '../../utils/images/images.dart';
import '../legs_screen/legs_screen.dart';
import '../login_screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List<String> tabsImages = [
    "assets/arms.png",
    "assets/legs.png",
    "assets/chest.png",
    "assets/shoulder.png",
    "assets/back.png",
  ];
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
              right: 25,
              top: 50,
              child:  GestureDetector(
                onTap: () {
                  _auth.signOut();
                    Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (Route<dynamic> route) => false,
        );
                },
                child:const Icon(Icons.logout,color: Colors.white,))),
            Positioned(
              top: size.height * 0.1,
              child: SizedBox(
                height: size.height * 0.85,
                width: size.width,
                // color: Colors.amberAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (index ==0) {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>const ArmsScreen()));
                          } else if(index == 1) {
                             Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>const LegsScreen()));
                          } else if(index == 2){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>const ChestScreen()));
                          }else if(index==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>const ShoulderScreen()));
                          }else if(index == 4){
                             Navigator.push(context, MaterialPageRoute(builder: (context)
                            =>const BackExcersices()));
                          }
                        },
                        child: SizedBox(
                          height: size.height*0.2,
                          width: size.width*0.8,
                          child: Card(
                            elevation: 15,
                            // color: Colors.orange,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Image.asset(tabsImages[index],
                            fit: BoxFit.fill,),
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
