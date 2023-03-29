import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../utils/state.dart';
import '../widgets/enum_chip.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isConfirmed = false;

  @override
  Widget build(BuildContext context) {
    //allows the home page widget to use variables from the app state
    var appState = context.watch<MyAppState>();

    void updatePosition(StartingPosition value) {
      setState(() => appState.startingPosition = value);
    }

    return Column(
      //centres the column in the GeneratorPage widget
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Name'),
        SizedBox(
          width: 300,
          child: TextFormField(controller: appState.nameController),
        ),
        const SizedBox(height: 30),
        const Text('Comments'),
        SizedBox(
          width: 300,
          child: TextFormField(controller: appState.commentController),
        ), //allows the user to type input
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text('Match Number'),
                SizedBox(
                  width: 70,
                  child:
                      TextFormField(controller: appState.matchNumberController),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              children: [
                const Text('Team Number'),
                SizedBox(
                  width: 70,
                  child: TextFormField(controller: appState.teamController),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Text('Robot Position'),
        const SizedBox(height: 10),
        // Starting Position Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EnumChip(
              text: "Red 1",
              onPressed: updatePosition,
              value: StartingPosition.red1,
              selection: appState.startingPosition,
            ),
            EnumChip(
              text: "Red 2",
              onPressed: updatePosition,
              value: StartingPosition.red2,
              selection: appState.startingPosition,
            ),
            EnumChip(
              text: "Red 3",
              onPressed: updatePosition,
              value: StartingPosition.red3,
              selection: appState.startingPosition,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EnumChip(
              text: "Blue 1",
              onPressed: updatePosition,
              value: StartingPosition.blue1,
              selection: appState.startingPosition,
            ),
            EnumChip(
              text: "Blue 2",
              onPressed: updatePosition,
              value: StartingPosition.blue2,
              selection: appState.startingPosition,
            ),
            EnumChip(
              text: "Blue 3",
              onPressed: updatePosition,
              value: StartingPosition.blue3,
              selection: appState.startingPosition,
            ),
          ],
        ),
        //create a button that will send the data to the google sheets and reset the data afterwords
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            child: const Text("Send Data"),
            // create a button that confims the user if they want to send the data to the google sheets
            onPressed: () {
              if (!isConfirmed) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm'),
                      content:
                          const Text('Are you sure you want to send the data?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'OK');
                            setState(() {
                              isConfirmed = true;
                            });
                            if (isConfirmed) {
                              if (appState.nameController.text == "" ||
                                  appState.teamController.text == "" ||
                                  appState.matchNumberController.text == "" ||
                                  appState.startingPosition ==
                                      StartingPosition.none) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Please fill out all fields'),
                                  ),
                                );
                              } else {
                                appState.saveToSheets();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Data Sent'),
                                  ),
                                );
                                appState.reset();
                                isConfirmed = false;
                              }
                            }
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ),
        // ↓ uncomment if you don't want the QR button to show on website
        // if (!kIsWeb)
        Padding(
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('QR Code'),
                  content: SizedBox(
                    width: 200,
                    child: QrImage(
                      data: const ListToCsvConverter()
                          .convert([appState.getData()]),
                    ),
                  ),
                );
              },
            ),
            child: const Text("QR"),
          ),
        )
      ],
    );
  }
}
