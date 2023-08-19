import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier{
  int _a=0;

  int get a => _a;

  set a(int value) {
    _a = value;
    notifyListeners();
  }


}