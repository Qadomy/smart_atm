import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_atm/web/web_atm_page.dart';

import 'mobile/mobile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String webapp = "webapp";
    String mobapp = "mobapp";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        webapp: (context) => const WebATMPage(),
        mobapp: (context) => const MobilePage(),
      },
      initialRoute: mobapp,
    );
  }
}
