import 'package:spicyearweb/controllers/MainIndexController.dart';
import 'package:spicyearweb/controllers/MenuController.dart';
import 'package:spicyearweb/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spicyearweb/screens/map/MapPageRoute.dart';
import 'package:spicyearweb/screens/setting/SettingPageRoute.dart';
import 'package:spicyearweb/screens/statistics/StatisticsPageRoute.dart';
import 'package:spicyearweb/screens/table/tablePageRoute.dart';

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
              Expanded(flex: 5, child: MapPageRoute()),

            if (mainIndexController.index == 1)
              Expanded(flex: 5, child: TablePageRoute()),

            if (mainIndexController.index == 2)
              Expanded(flex: 5, child: StatisticsPageRoute()),

            if (mainIndexController.index == 3)
              Expanded(flex: 5, child: SettingPageRoute()),
          ]),
        ));
  }
}
