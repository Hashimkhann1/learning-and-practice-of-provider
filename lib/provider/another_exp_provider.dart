import 'package:flutter/material.dart';

class AnotherExpProvider with ChangeNotifier {
  double _sliderValue = 1.0;

  double get sliderValue => _sliderValue;

  void changeSliderVal(double val) {
    _sliderValue = val;
    notifyListeners();
  }


}