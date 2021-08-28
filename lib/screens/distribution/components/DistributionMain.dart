import 'package:flutter/material.dart';
import 'package:spicyearweb/constants.dart';
import 'package:spicyearweb/screens/distribution/components/amount/DistributionAmount.dart';
import 'package:spicyearweb/screens/distribution/components/DistributionPageHeader.dart';
import 'package:spicyearweb/screens/distribution/components/plan/DistributionPlan.dart';
import 'package:spicyearweb/screens/distribution/components/status/DistributionStatus.dart';
import 'package:spicyearweb/screens/distribution/components/user/DistributionUser.dart';

class DistributionMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            // ヘッダー
            DistributionPageHeader(),
            SizedBox(height: 10),

            // 枚数の選択
            DistributionAmount(),
            SizedBox(height: 10),

            // プランの選択
            DistributionPlan(),
            SizedBox(height: 10),

            // 枚数の選択
            DistributionStatus(),
            SizedBox(height: 10),

            // ユーザの選択
            DistributionUser()
          ],
        ),
      ),
    );
  }
}
