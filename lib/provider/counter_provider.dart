
import 'package:flutter/foundation.dart';

class CountProvieer with ChangeNotifier {

  int _count = 0;

  int get count => _count;

  void setCount() {
    if(_count == 10){
      _count = 0;
    }
    _count++;
    notifyListeners();
  }

}