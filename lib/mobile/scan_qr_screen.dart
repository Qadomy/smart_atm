import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({Key? key}) : super(key: key);

  @override
  _ScanQrScreenState createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  String qrCode = 'Unknown';
  final ref = FirebaseDatabase(
          databaseURL:
              "https://smartatm-36790-default-rtdb.asia-southeast1.firebasedatabase.app")
      .reference();

  @override
  void initState() {
    scanQRCode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<void> scanQRCode() async {
    try {
      qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', "CANCEL", true, ScanMode.QR);
      if (!mounted) return;

      try {
        print(">>>>>>>>> before");
        await ref.child("qrcode").update({'qrcode': 1});
        // print(">>>>>>>>> ${ref.update({'qrcode': 1}).toString()}");
      } catch (e) {
        print(">>>>>>>>> EEE $e");
      }
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}
