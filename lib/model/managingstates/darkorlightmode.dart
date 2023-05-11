import 'package:flutter/material.dart';

class DarkOrLightMode with ChangeNotifier{
  
  bool _isDark=false;

  setMode(bool mode){
    // print('setting the mod');
    
    _isDark=mode;
    print(_isDark);
    notifyListeners();
  }

  get isDark{
    return _isDark;
  }

   

}