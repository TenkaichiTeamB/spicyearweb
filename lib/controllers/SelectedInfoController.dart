import 'package:flutter/material.dart';

class SelectedInfoController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  // 選択されたユーザid
  String userId = "null";

  // 選択されたプラン
  String plan = "null";

  // 選択されたチケットの枚数
  int amount = 0;

  // 選択されたステータス
  String status = "null";

  void setUserId(String willSetUserId) {
    userId = willSetUserId;
    notifyListeners();
  }

  void setPlan(String willSetPlan) {
    plan = willSetPlan;
    notifyListeners();
  }

  void increaseAmount() {
    amount++;
    notifyListeners();
  }

  void decreaseAmount() {
    if (amount > 0) amount--;
    notifyListeners();
  }

  void setStatus(String willsetStatus) {
    status = willsetStatus;
    notifyListeners();
  }
}
