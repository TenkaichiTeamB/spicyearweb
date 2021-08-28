import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicyearweb/controllers/MainIndexController.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // IndexstateClass = provider.of??
    MainIndexController mainIndexController =
        Provider.of<MainIndexController>(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SpicyEar",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
          DrawerListTile(
            title: "Home",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              // IndexstateClass.changepage
              mainIndexController.setIndex(0);
            },
          ),
          DrawerListTile(
            title: "Account",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              mainIndexController.setIndex(1);
            },
          ),
          DrawerListTile(
            title: "Distribution",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              mainIndexController.setIndex(2);
            },
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              mainIndexController.setIndex(3);
            },
          ),
          DrawerListTile(
            title: "Accounting",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              mainIndexController.setIndex(4);
            },
          ),
          // DrawerListTile(
          //   title: "Notification",
          //   svgSrc: "assets/icons/menu_notification.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Profile",
          //   svgSrc: "assets/icons/menu_profile.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Settings",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
