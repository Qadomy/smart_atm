import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  _WithdrawScreenState createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  final referenceDatabase = FirebaseDatabase.instance;
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  late final ref;
  @override
  void initState() {
    ref = referenceDatabase.reference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _future,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
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
                          "Account",
                          style: TextStyle(
                              color: Color(0xFF4D70A6),
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "No.  12987412876",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "55\$",
                              style: TextStyle(
                                  color: Colors.black,
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
                                labelText: "55\$",
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(10, 10),
                                      color: const Color(0xFF4D70A6)
                                          .withOpacity(0.2),
                                      blurRadius: 16),
                                  const BoxShadow(
                                      offset: Offset(-10, -10),
                                      color: Color.fromARGB(170, 255, 255, 255),
                                      blurRadius: 10),
                                ]),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  color: Color(0xFF4D70A6), fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          );
        });
  }
}
