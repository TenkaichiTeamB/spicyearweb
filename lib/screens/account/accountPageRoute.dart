import 'package:flutter/material.dart';
import 'package:spicyearweb/screens/dashboard/components/header.dart';

import '../../constants.dart';

class AccountPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [Header(), Text("AccountPage")],
        ),
      ),
    );
  }
}
