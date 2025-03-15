import 'package:flutter/material.dart';

//NOTIFIER class  //ChangeNotifier (class name)
//value aage consumer ko dega via provider
class Counter extends ChangeNotifier  {
  int _value = 0;

  Counter(this._value);

   int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}


