import 'package:flutter/material.dart';
import 'package:spicyearweb/constants.dart';
import 'package:spicyearweb/controllers/SelectedInfoController.dart';
import 'package:spicyearweb/parts/button/BlueLineButton.dart';
import 'package:provider/provider.dart';

class DistributionAmount extends StatelessWidget {
  const DistributionAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SelectedInfoController selectedInfoController =
        Provider.of<SelectedInfoController>(context);
    return SafeArea(
      child: SingleChildScrollView(
        // padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Amount",
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: BlueLineButton("+"),
                            onTap: () =>
                                {selectedInfoController.increaseAmount()},
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: BlueLineButton("-"),
                            onTap: () =>
                                {selectedInfoController.decreaseAmount()},
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
