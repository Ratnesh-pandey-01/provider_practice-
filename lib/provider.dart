import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //data
  int _count = 0;
  //set,add data

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  //fetch
  getValue() {
    return _count;
  }
}
