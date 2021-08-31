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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Image.asset('assets/statistics.jpeg', fit: BoxFit.fill)],
        ),
      ),
    );
  }
}
