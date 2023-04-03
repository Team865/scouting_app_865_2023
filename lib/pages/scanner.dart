import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

import '../utils/gsheets.dart';
import '../utils/state.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => QrScannerPageState();
}

class QrScannerPageState extends State<QrScannerPage> {
  List<String> cache = ["", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return SizedBox(
        width: 200,
        height: 200,
        child: MobileScanner(
          onDetect: (capture) {
            for (final barcode in capture.barcodes) {
              final value = barcode.rawValue!;
              if (!cache.contains(value)) {
                final row = const CsvToListConverter().convert(value)[0];
                Gsheets.addRow(row);

                cache.removeAt(0);
                cache.add(value);

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Data Sent '),
                      content: SizedBox(
                        width: 200,
                        child: Text(value),
                      ),
                    );
                  },
                );
                
              }
            }
          },
        ));
  }
}
