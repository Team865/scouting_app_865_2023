import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/toggle_chip.dart';

class GeneratorPage extends StatefulWidget {
  const GeneratorPage({super.key});

  @override
  State<GeneratorPage> createState() => _GeneratorPageState();
}

enum Position { none, red1, red2, red3, blue1, blue2, blue3 }

class _GeneratorPageState extends State<GeneratorPage> {
  @override
  Widget build(BuildContext context) {
    //allows the home page widget to use variables from the app state
    var appState = context.watch<MyAppState>();

    void updatePosition(Position value) {
      setState(() {
        appState.position = value;
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
            child: Text('Scouter name:'),
          ),
          //add place to input your name here
          const SizedBox(height: 8), //creates a gap before the next item
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Team number:'),
          ),
          //add place to input the team's number here
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Robot position:'),
          ),
          //creates buttons to select the robot's position

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleChip(
                text: "Red 1",
                onPressed: updatePosition,
                value: Position.red1,
                selection: appState.position,
              ),
              ToggleChip(
                text: "Red 2",
                onPressed: updatePosition,
                value: Position.red2,
                selection: appState.position,
              ),
              ToggleChip(
                text: "Red 3",
                onPressed: updatePosition,
                value: Position.red3,
                selection: appState.position,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleChip(
                text: "Blue 1",
                onPressed: updatePosition,
                value: Position.blue1,
                selection: appState.position,
              ),
              ToggleChip(
                text: "Blue 2",
                onPressed: updatePosition,
                value: Position.blue2,
                selection: appState.position,
              ),
              ToggleChip(
                text: "Blue 3",
                onPressed: updatePosition,
                value: Position.blue3,
                selection: appState.position,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
