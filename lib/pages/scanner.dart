import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:scouting_app_865_2023/pages/home.dart';

class myQRScanner extends StatelessWidget {
  const myQRScanner([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter QR Scanner",
      home: HomePage(),
    );
  }
}

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QRScanner"),
      ),
    );
  }
}
