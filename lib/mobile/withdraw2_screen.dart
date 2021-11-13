import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_atm/mobile/scan_qr_screen.dart';

class Withdraw2Screen extends StatefulWidget {
  const Withdraw2Screen({Key? key}) : super(key: key);

  @override
  _Withdraw2ScreenState createState() => _Withdraw2ScreenState();
}

class _Withdraw2ScreenState extends State<Withdraw2Screen> {
  final ref = FirebaseDatabase(
          databaseURL:
              "https://smartatm-36790-default-rtdb.asia-southeast1.firebasedatabase.app")
      .reference();

  @override
  void initState() {
    _asd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 30),
                  const Text(
                    "Withdraw",
                    style: TextStyle(
                        color: Color(0xffa20d5f),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "No.  12987412876",
                    style: TextStyle(
                        color: Color(0xffc2d0db),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "55\$",
                        style: TextStyle(
                            color: Color(0xffa20d5f),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  const TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Color(0xFF4D70A6)),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF4D70A6), width: 2)),
                          labelText: "20\$",
                          labelStyle: TextStyle(
                              color: Color(0xFF4D70A6), fontSize: 30))),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScanQrScreen()));
                      // try {
                      //   print("%%%%%%%% before");
                      //
                      //   await ref.child("qrcode").onValue.listen((event) {
                      //     setState(() {
                      //       print(">>>>> ${event.snapshot.value}");
                      //     });
                      //   });
                      //
                      //   // await ref.set(1);
                      //   print("%%%%%%%% done");
                      //   // print("%%%%%%%% ${ref.set(1)}");
                      // } catch (e) {
                      //   print("%%%%%%%% $e");
                      // }
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      height: 80,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xFFF1F3F6),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(10, 10),
                                color: const Color(0xFF4D70A6).withOpacity(0.2),
                                blurRadius: 16),
                            const BoxShadow(
                                offset: Offset(-10, -10),
                                color: Color.fromARGB(170, 255, 255, 255),
                                blurRadius: 10),
                          ]),
                      child: const Text(
                        "Submit",
                        style:
                            TextStyle(color: Color(0xFF4D70A6), fontSize: 16),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void _asd() async {
    await ref.child("qrcode").update({'qrcode': 0});
  }
}
