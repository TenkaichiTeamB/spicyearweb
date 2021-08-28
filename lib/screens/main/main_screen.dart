import 'package:management/controllers/MainIndexController.dart';
import 'package:management/controllers/MenuController.dart';
import 'package:management/responsive.dart';
import 'package:management/screens/account/accountPageRoute.dart';
import 'package:management/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:management/screens/distribution/distributionPageRoute.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // IndexstateClass = provider.of??
    MainIndexController mainIndexController =
        Provider.of<MainIndexController>(context);

    return Scaffold(
        key: context.read<MenuController>().scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),

            if (mainIndexController.index == 0)
              Expanded(flex: 5, child: DashboardScreen()),

            if (mainIndexController.index == 1)
              Expanded(flex: 5, child: AccountPageRoute()),

            if (mainIndexController.index == 2)
              Expanded(flex: 5, child: DistributionPageRoute()),

            if (mainIndexController.index == 3)
              Expanded(flex: 5, child: AccountPageRoute()),

            if (mainIndexController.index == 4)
              Expanded(flex: 5, child: AccountPageRoute()),
          ]),
        ));
  }
}
