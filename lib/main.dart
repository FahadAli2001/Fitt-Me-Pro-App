import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gym_fyp/controller/bmi_controller/bmi_controller.dart';
import 'package:gym_fyp/firebase_options.dart';
import 'package:gym_fyp/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'controller/auth_controller/auth_controller.dart';

void main()async {
  runApp(const MyApp());
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>BmiController()),
        ChangeNotifierProvider(create: (_)=>AuthController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fit Me Pro',
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

 