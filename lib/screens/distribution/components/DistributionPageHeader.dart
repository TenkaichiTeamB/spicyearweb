import 'package:management/controllers/MenuController.dart';
import 'package:management/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DistributionPageHeader extends StatelessWidget {
  const DistributionPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Distribution",
            style: Theme.of(context).textTheme.headline5,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
      ],
    );
  }
}
