import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreTestWidget extends StatelessWidget {
  const FirestoreTestWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('test').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        else if (snapshot.hasData) {
          return Text(snapshot.data!.docs[0]['testfield'].toString());
        } else {
          return new Text('Loading...');
        }
        // switch (snapshot.connectionState) {
        //   case ConnectionState.waiting:
        //     return new Text('Loading...');
        //   default:
        //     return Text('Error: ${snapshot.error}');
        // }
      },
    );
  }
}
