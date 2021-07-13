import 'package:flutter/cupertino.dart';

class CounterState extends ChangeNotifier{
  int _counter=0;
  int get counter => _counter;
  set counter(int value){
    _counter=value;
  }

  void increment(){
    ++_counter;
    notifyListeners();
  }
  void decrement(){
    --_counter;
    notifyListeners();
  }
}