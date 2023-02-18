import 'package:flutter/material.dart';

///provider that active on main route of the app
class HomeProvider extends ChangeNotifier {
  Color _backgroundColor = Colors.white;

  ///getter for background color
  Color get backgroundColor => _backgroundColor;

  ///setter for background color
  set backgroundColor(Color value) {
    _backgroundColor = value;
    notifyListeners();
  }
}
