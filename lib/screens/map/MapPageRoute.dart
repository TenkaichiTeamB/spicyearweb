import 'package:flutter/material.dart';
// import 'package:spicyearweb/screens/dashboard/components/header.dart';

import '../../constants.dart';

class MapPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/heatmap.png', fit: BoxFit.fill),
            ],
          )
          // Image.network(
          //     'https://www.ascp.com/resource/resmgr/images/heatmap/US_Map_November_2020.png')
          ),
    );
  }
}
