import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TablePageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [addDataButton(), tableTitle(), tableBuilder()],
        ),
      ),
    );
  }

  Widget addDataButton() {
    return TextButton(
        onPressed: () => {
              FirebaseFirestore.instance
                  .collection('test_collection')
                  .doc('RL7luMQJS0I2zR4fhHN8')
                  .update({
                'data': FieldValue.arrayUnion([
                  {
                    "timestamp": DateTime.now(),
                    "geopoint": GeoPoint(
                        Random().nextDouble() * 90, Random().nextDouble() * 90),
                    "bodytemp": Random().nextDouble() + 36.0,
                    "heartbeat": Random().nextInt(20) + 80,
                  }
                ])
              })
            },
        child: Text('Push to Add Dummy Data'));
  }

  Widget tableTitle() {
    return Row(children: [
      Spacer(),
      Text('時刻'),
      Spacer(),
      Text('緯度'),
      Spacer(),
      Text('経度'),
      Spacer(),
      Text('体温'),
      Spacer(),
      Text('心拍数'),
      Spacer(),
    ]);
  }

  Widget tableBuilder() {
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('test_collection')
            .doc('RL7luMQJS0I2zR4fhHN8')
            .snapshots(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Text('Loading...');
          } else {
            // 表を描画する

            var snapshotData = snapshot.data!['data'] as List;

            return Table(
                border: TableBorder.all(color: Colors.white),
                // columnWidths: const <int, TableColumnWidth>{
                //   0: IntrinsicColumnWidth(),
                //   1: FlexColumnWidth(1.0),
                //   2: FixedColumnWidth(100.0),
                // },

                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: snapshotData
                    .map((element) => TableRow(children: [
                          Text(element['timestamp'].toDate().toString()),
                          Text(element['geopoint'].latitude.toString()),
                          Text(element['geopoint'].longitude.toString()),
                          Text(element['bodytemp'].toString()),
                          Text(element['heartbeat'].toString()),
                        ]))
                    .toList());
          }
        });
  }
}
