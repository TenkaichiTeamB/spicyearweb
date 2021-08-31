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
          children: [Text("TablePage"), tableBuilder()],
        ),
      ),
    );
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
            return Text("array" + snapshot.data!['data'].toString());
          }
        });
  }
}
