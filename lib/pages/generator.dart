import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state.dart';
import '../widgets/enum_chip.dart';
import 'package:qr/qr.dart';

class GeneratorPage extends StatefulWidget {
  const GeneratorPage({super.key});

  @override
  State<GeneratorPage> createState() => GeneratorPageState();
}

class GeneratorPageState extends State<GeneratorPage> {
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
              child: TextFormField(controller: appState.matchNumberController),
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
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            onPressed: () async {
              if(await appState.saveToSheets()) {
                setState(() {

                //tell the user that the data has been saved and center the text
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    //make the border circular
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    //make the backround color of the snackbar green
                    backgroundColor: Colors.green,
                    content: Text("Data Saved", textAlign: TextAlign.center),
                  ),
                );

              });
              }
              else{
                setState(() {

                //tell the user that the data has been saved and center the text
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    //make the border circular
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    //make the backround color of the snackbar green
                    backgroundColor: Colors.red,
                    content: Text("Data Not Saved", textAlign: TextAlign.center),
                  ),
                );

              });

              }
            },
            child: const Text("Save"),
          ), 
          //adds a button to save the data, currently not functional
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            onPressed: () => setState(appState.reset),
            child: const Text("Reset"),
          ),
        ),
        //Padding(padding: const EdgeInsets.all(5.0),
          //child: ElevatedButton(
            //onPressed: () => Navigator.pushNamed(context, '/qr_code'),
            //child: const Text("Show QR Code"),
          //),
        //)
      ],
    );
  }
}
