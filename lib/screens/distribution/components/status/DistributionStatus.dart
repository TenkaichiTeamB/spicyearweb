import 'package:flutter/material.dart';
import 'package:management/constants.dart';
import 'package:management/controllers/SelectedInfoController.dart';
import 'package:management/parts/button/BlueLineButton.dart';
import 'package:provider/provider.dart';

class DistributionStatus extends StatelessWidget {
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
              "Status",
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
                            child: BlueLineButton(
                              "Student",
                            ),
                            onTap: () =>
                                {selectedInfoController.setStatus("Student")},
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: BlueLineButton(
                              "Adult",
                            ),
                            onTap: () =>
                                {selectedInfoController.setStatus("Adult")},
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
