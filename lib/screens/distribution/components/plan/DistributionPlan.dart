import 'package:flutter/material.dart';
import 'package:spicyearweb/constants.dart';
import 'package:spicyearweb/controllers/SelectedInfoController.dart';
import 'package:spicyearweb/parts/button/BlueLineButton.dart';
import 'package:provider/provider.dart';

class DistributionPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SelectedInfoController selectedInfoController =
        Provider.of<SelectedInfoController>(context);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Plan",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "ライト",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("ライト")},
                          ),
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "ミディアム",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("ミディアム")},
                          ),
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "シティ",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("シティ")},
                          ),
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "運営に協力",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("運営に協力")},
                          ),
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "キャンペーン",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("キャンペーン")},
                          ),
                          Spacer(),
                          GestureDetector(
                            child: BlueLineButton(
                              "メンバー",
                            ),
                            onTap: () =>
                                {selectedInfoController.setPlan("メンバー")},
                          ),
                          Spacer(),
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
