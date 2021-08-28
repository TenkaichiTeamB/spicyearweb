import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:management/constants.dart';
import 'package:management/controllers/SelectedInfoController.dart';
import 'package:provider/provider.dart';

class DistributionUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SelectedInfoController selectedInfoController =
        Provider.of<SelectedInfoController>(context);

    return SafeArea(
      child:
          // SingleChildScrollView(
          //   child:
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ユーザの選択
          Text(
            "User",
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 5),

          Container(
              padding: EdgeInsets.all(defaultPadding),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: StreamBuilder<QuerySnapshot>(
                  // ★2 streamに`Stream<QuerySnapshot>`を渡す。
                  stream: FirebaseFirestore.instance
                      .collection('userProfiles')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError)
                      return new Text('Error: ${snapshot.error}');
                    else {
                      if (snapshot.hasData) {
                        //   if (snapshot.data!.docs == null) {
                        //     return Text('エラーだよ');
                        //   }else{
                        final List<DocumentSnapshot> documents =
                            snapshot.data!.docs;

                        // }
                        return ListView(
                            children: documents
                                .map((doc) => GestureDetector(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(doc['userName']),
                                          Text(doc['firstName']),
                                          Text(doc['familyName']),
                                          Text(doc.id),
                                        ],
                                      ),
                                      onTap: () => {
                                        selectedInfoController
                                            .setUserId(doc['userName'])
                                      },
                                    ))
                                .toList());
                      } else if (snapshot.hasError) {
                        return Text('エラーだよ');
                      } else {
                        return Text("Loadings");
                      }
                    }
                  })
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     SizedBox(
              //       width: double.infinity,
              //       child: DataTable2(
              //         columnSpacing: defaultPadding,
              //         minWidth: 600,
              //         columns: [
              //           DataColumn(
              //             label: Text("Name"),
              //           ),
              //           DataColumn(
              //             label: Text("Mail"),
              //           ),
              //           DataColumn(
              //             label: Text("ID"),
              //           ),
              //         ],
              //         rows: List.generate(
              //           demoRecentFiles.length,
              //           (index) => recentFileDataRow(demoRecentFiles[index]),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              )
        ],
      ),
      // ),
    );
  }
}
