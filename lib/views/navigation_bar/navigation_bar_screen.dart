import 'package:flutter/material.dart';
import 'package:gym_fyp/views/excs_plan_screen/excs_plan_screen.dart';
import 'package:gym_fyp/views/home_screen/home_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int index = 0;

  List screen = [const HomeScreen(), const ExcsPlanScreen(), const Placeholder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: const Color(0xff211E1E),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    index = 0;
                    setState(() {});
                  },
                  child:   CircleAvatar(
                    backgroundColor: index==0?Colors.white:const Color(0xff211E1E),
                      child:  Icon(
                    Icons.fitness_center,
                    color:index == 0 ? const Color(0xff211E1E):Colors.white,
                  ))),
              GestureDetector(
                  onTap: () {
                    index = 1;
                    setState(() {});
                  },
                  child:   CircleAvatar(
                    backgroundColor: index==1?Colors.white:const Color(0xff211E1E),
                      child:  Icon(
                    Icons.calendar_month_outlined,
                     color:index == 1 ? const Color(0xff211E1E):Colors.white,
                  ))),
              GestureDetector(
                onTap: () {
                  index = 2;
                  setState(() {});
                },
                child:   CircleAvatar(
                  backgroundColor: index==2?Colors.white:const Color(0xff211E1E),
                    child:  Text(
                  "BMI",
                  style: TextStyle( color:index == 2ch ? const Color(0xff211E1E):Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
      body: screen[index],
    );
  }
}
