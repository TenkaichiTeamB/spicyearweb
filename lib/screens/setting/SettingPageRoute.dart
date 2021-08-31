import 'package:flutter/material.dart';
// import 'package:spicyearweb/screens/dashboard/components/header.dart';

import '../../constants.dart';

class SettingPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text("SettingPageRoute"),
            Image.network(
                'https://assets.uigarage.net/content/uploads/2016/03/tumblr_o3lh20LSgH1ul8y65o1_1280-1.jpg')
          ],
        ),
      ),
    );
  }
}
