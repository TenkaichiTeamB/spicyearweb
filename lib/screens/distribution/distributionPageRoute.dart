import 'package:flutter/material.dart';
import 'package:management/controllers/SelectedInfoController.dart';
import 'package:management/screens/distribution/components/DistributionMain.dart';
import 'package:management/screens/distribution/components/DistributionSub.dart';
import 'package:provider/provider.dart';

// import '../../constants.dart';

class DistributionPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        // child: SingleChildScrollView(
        // padding: EdgeInsets.all(defaultPadding),
        child: Row(children: [
      Expanded(
        flex: 4,
        child: DistributionMain(),
      ),
      Expanded(
        flex: 1,
        child: DistributionSub(),
      )
    ]));
  }
}
