import 'package:flutter/material.dart';
import 'package:spicyearweb/constants.dart';
import 'package:spicyearweb/controllers/SelectedInfoController.dart';
import 'package:spicyearweb/responsive.dart';
import 'package:provider/provider.dart';
// import 'package:management/screens/distribution/components/DistributionPageHeader.dart';

class DistributionSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SelectedInfoController selectedInfoController =
        Provider.of<SelectedInfoController>(context);

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child:
            // Column(
            //   children: [
            // DistributionPageHeader(),
            // Text("Selected Item"),
            Container(
          // height: double.infinity,
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Selected Item",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 10),
              Text(
                "User",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                selectedInfoController.userId != "null"
                    ? selectedInfoController.userId.toString()
                    : "Not Selected",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                "Status",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                selectedInfoController.status != "null"
                    ? selectedInfoController.status.toString()
                    : "Not Selected",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                "Plan",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                selectedInfoController.plan != "null"
                    ? selectedInfoController.plan.toString()
                    : "Not Selected",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                "Amount",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                selectedInfoController.amount.toString(),
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical:
                        defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                  ),
                ),
                onPressed: () {},
                // icon: Icon(Icons.add),
                child: Text("Complete"),
              ),
            ],
          ),
          //   )
          // ],
        ),
      ),
    );
  }
}
