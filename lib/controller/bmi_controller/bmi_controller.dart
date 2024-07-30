import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BmiController extends ChangeNotifier {
  TextEditingController heightController = TextEditingController();
  bool _isMale = true;
  String _weight = '';

  bool get isMale => _isMale;
  String get weight => _weight;

  set isMale(value) {
    _isMale = value;

    notifyListeners();
  }

  void calculateWight() {
    String height = heightController.text;
    if (height == "4.6") {
      if (_isMale == true) {
        _weight = "28.5 / 34.9 kg";
        notifyListeners();
      } else {
        _weight = "28.5 / 34.9 kg";
        notifyListeners();
      }
    } else if (height == "4.7") {
      if (_isMale == true) {
        _weight = "30.8 / 38.1 kg";
        notifyListeners();
      } else {
        _weight = "30.8 / 37.6 kg";
        notifyListeners();
      }
    } else if (height == "4.8") {
      if (_isMale == true) {
        _weight = "32.6 / 40.8 kg";
        notifyListeners();
      } else {
        _weight = "32.6 / 39.9 kg";
        notifyListeners();
      }
    } else if (height == "4.9") {
      if (_isMale == true) {
        _weight = "35.8 / 43.8 kg";
        notifyListeners();
      } else {
        _weight = "34.6 / 42.6 kg";
        notifyListeners();
      }
    } else if (height == "4.10") {
      if (_isMale == true) {
        _weight = "38.6 / 46.8 kg";
        notifyListeners();
      } else {
        _weight = "36.6 / 44.9 kg";
        notifyListeners();
      }
    } else if (height == "4.11") {
      if (_isMale == true) {
        _weight = "39 / 47.6 kg";
        notifyListeners();
      } else {
        _weight = "40 / 49.9 kg";
        notifyListeners();
      }
    } else if (height == "5.0") {
      if (_isMale == true) {
        _weight = "43 / 53 kg";
        notifyListeners();
      } else {
        _weight = "40.8 / 49.9 kg";
        notifyListeners();
      }
    } else if (height == "5.1") {
      if (_isMale == true) {
        _weight = "45.8 / 55.6 kg";
        notifyListeners();
      } else {
        _weight = "43 / 52.6 kg";
        notifyListeners();
      }
    } else if (height == "5.2") {
      if (_isMale == true) {
        _weight = "48.1 / 58.6 kg";
        notifyListeners();
      } else {
        _weight = "44.9 / 54.9 kg";
        notifyListeners();
      }
    } else if (height == "5.3") {
      if (_isMale == true) {
        _weight = "50.1 / 61.6 kg";
        notifyListeners();
      } else {
        _weight = "47.2 / 57.9 kg";
        notifyListeners();
      }
    } else if (height == "5.4") {
      if (_isMale == true) {
        _weight = "53 / 64.6 kg";
        notifyListeners();
      } else {
        _weight = "49 / 59.9 kg";
        notifyListeners();
      }
    } else if (height == "5.5") {
      if (_isMale == true) {
        _weight = "55.3 / 68 kg";
        notifyListeners();
      } else {
        _weight = "51 / 62.6 kg";
        notifyListeners();
      }
    } else if (height == "5.6") {
      if (_isMale == true) {
        _weight = "58 / 70.7 kg";
        notifyListeners();
      } else {
        _weight = "53 / 64.8 kg";
        notifyListeners();
      }
    } else if (height == "5.7") {
      if (_isMale == true) {
        _weight = "60.3 / 73.9 kg";
        notifyListeners();
      } else {
        _weight = "55.3 / 67.6 kg";
        notifyListeners();
      }
    } else if (height == "5.8") {
      if (_isMale == true) {
        _weight = "63 / 76.6 kg";
        notifyListeners();
      } else {
        _weight = "57 / 69.9 kg";
        notifyListeners();
      }
    } else if (height == "5.9") {
      if (_isMale == true) {
        _weight = "65.3 / 79.8 kg";
        notifyListeners();
      } else {
        _weight = "59.4 / 72.9 kg";
        notifyListeners();
      }
    } else if (height == "5.10") {
      if (_isMale == true) {
        _weight = "67.6 / 83 kg";
        notifyListeners();
      } else {
        _weight = "61.2 / 74.8 kg";
        notifyListeners();
      }
    } else if (height == "5.11") {
      if (_isMale == true) {
        _weight = "70.3 / 85.7 kg";
        notifyListeners();
      } else {
        _weight = "63.5 / 77.5 kg";
        notifyListeners();
      }
    } else if (height == "6.0") {
      if (_isMale == true) {
        _weight = "72.6 / 88.9 kg";
        notifyListeners();
      } else {
        _weight = "65.3 / 79.8 kg";
        notifyListeners();
      }
    } else if (height == "6.1") {
      if (_isMale == true) {
        _weight = "75 / 91.6 kg";
        notifyListeners();
      } else {
        _weight = "67.6 / 82.5 kg";
        notifyListeners();
      }
    } else {
      Fluttertoast.showToast(
          msg: "In-valid Range",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red.shade900,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
