import 'package:flutter/material.dart';
import 'package:gym_fyp/controller/bmi_controller/bmi_controller.dart';
import 'package:gym_fyp/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>BmiController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fitt Me Pro',
        theme: ThemeData(
          primaryColor: Colors.black,
         
          inputDecorationTheme:const InputDecorationTheme(
            focusColor: Colors.black,
          ),
          useMaterial3: true,
        ),
         home:const SplashScreen(),
      ),
    );
  }
}

 