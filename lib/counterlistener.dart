import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int counter =0;
  void increse(){
    counter= counter+1;
    notifyListeners();
  }
}