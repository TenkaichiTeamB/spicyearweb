import 'package:flutter/material.dart';
// import 'package:spicyearweb/screens/dashboard/components/header.dart';

import '../../constants.dart';

class StatisticsPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Text("StatisticsPageRoute"),
            Image.network(
                'https://cdn.dribbble.com/users/883236/screenshots/12223400/media/8b186ee87db063398cb275fd76ef4812.png?compress=1&resize=1600x1200')
          ],
        ),
      ),
    );
  }
}
