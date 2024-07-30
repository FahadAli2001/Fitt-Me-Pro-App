import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gym_fyp/views/home_screen/home_screen.dart';
import 'package:gym_fyp/views/login_screen/login_screen.dart';

class AuthController extends ChangeNotifier {
  final TextEditingController emailControllerSignUp = TextEditingController();
  final TextEditingController passwordControllerSignUp =
      TextEditingController();
  final TextEditingController nameControllerSignUp = TextEditingController();
  final TextEditingController emailControllerSignIn = TextEditingController();
  final TextEditingController passwordControllerSignIn =
      TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUpWithEmailPassword(
      String email, String password, String name,context) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;

      if (user != null) {
         

        await _firestore.collection('users').doc(user.uid).set({
          'uid': user.uid,
          'name': name,
          'email': email,
        });
         Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (Route<dynamic> route) => false,
        );
        notifyListeners();
      }
    } catch (e) {
      String errorMessage = _handleFirebaseAuthError(e);
      Fluttertoast.showToast(
          msg: errorMessage,
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red.shade900);
    }
  }

   Future<void> loginWithEmailPassword(context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: emailControllerSignIn.text, password: passwordControllerSignIn.text);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
      notifyListeners();
    } catch (e) {
      String errorMessage = _handleFirebaseAuthError(e);
      Fluttertoast.showToast(msg: errorMessage, toastLength: Toast.LENGTH_LONG,backgroundColor: Colors.red.shade900);
    }
  }

  String _handleFirebaseAuthError(dynamic error) {
    String errorMessage;

    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'email-already-in-use':
          errorMessage =
              'The email address is already in use by another account.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is not valid.';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Email/password accounts are not enabled.';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak.';
          break;
        default:
          errorMessage = 'An undefined Error happened.';
      }
    } else {
      log(error);
      errorMessage = 'An unknown error occurred.';
    }

    return errorMessage;
  }

  Future<void> checkSignUpCondition(context) async {
    final email = emailControllerSignUp.text.trim();
    final password = passwordControllerSignUp.text.trim();
    final name = nameControllerSignUp.text.trim();

    if (email.isEmpty || password.isEmpty || name.isEmpty) {
      Fluttertoast.showToast(
          msg: 'All fields are required',
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.red.shade900);
    } else {
      try {
        await signUpWithEmailPassword(email, password, name,context);
        emailControllerSignUp.clear();
        passwordControllerSignUp.clear();
        nameControllerSignUp.clear();
        Fluttertoast.showToast(
            msg: 'Sign Up Successful', toastLength: Toast.LENGTH_SHORT,backgroundColor: Colors.green.shade900);
       
      } catch (e) {
        log(e.toString());
      }
    }
  }
}
