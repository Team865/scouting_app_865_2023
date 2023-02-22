import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/enum_chip.dart';

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
      setState(() {
        appState.startingPosition = value;
      });
    }

    return Center(
        child: Column(
      //centres the column in the GeneratorPage widget
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          //gives the text more space
          padding: EdgeInsets.all(8.0),
          child: Text('Comments:'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 300,
            child: TextFormField(
              controller: appState.commentController,
            ),
          ),
        ), //allows the user to type input
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Team number:'),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: appState.teamController,
              ),
            )),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Robot position:'),
        ),
        //creates buttons to select the robot's position

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleEnumChip(
              text: "Red 1",
              onPressed: updatePosition,
              value: StartingPosition.red1,
              selection: appState.startingPosition,
            ),
            CircleEnumChip(
              text: "Red 2",
              onPressed: updatePosition,
              value: StartingPosition.red2,
              selection: appState.startingPosition,
            ),
            CircleEnumChip(
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
            CircleEnumChip(
              text: "Blue 1",
              onPressed: updatePosition,
              value: StartingPosition.blue1,
              selection: appState.startingPosition,
            ),
            CircleEnumChip(
              text: "Blue 2",
              onPressed: updatePosition,
              value: StartingPosition.blue2,
              selection: appState.startingPosition,
            ),
            CircleEnumChip(
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
            onPressed: () {},
            child: const Text("Save"),
          ), //adds a button to save the data, currently not functional
        )
      ],
    ));
  }
}
