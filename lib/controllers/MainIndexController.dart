import 'package:flutter/material.dart';

class MainIndexController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  // 最初のページ
  int index = 1;

  void setIndex(int willSetIndex) {
    index = willSetIndex;
    notifyListeners();
  }
}
