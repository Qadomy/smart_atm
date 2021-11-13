import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebATMPage extends StatefulWidget {
  const WebATMPage({Key? key}) : super(key: key);

  // final FirebaseApp app;
  //
  // const WebATMPage({Key? key, required this.app}) : super(key: key);

  @override
  _WebATMPageState createState() => _WebATMPageState();
}

class _WebATMPageState extends State<WebATMPage> {
  final referenceDatabase = FirebaseDatabase.instance;
  final Future<FirebaseApp> _future = Firebase.initializeApp();

  final testQr = "testQr";
  late dynamic value;

  @override
  void initState() {
    final ref = referenceDatabase.reference();
    ref.child("qrcode").onValue.listen((event) {
      setState(() {
        value = event.snapshot.value['qrcode'];
        // print(">>>>>>>>>> ${event.snapshot.value['qrcode'].toString()}");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Center(
                child: value == 0
                    ? Image.asset("assets/atm7.png")
                    : Image.asset("assets/atm2.png"),
              );
            }
          }),
    );
  }
}
