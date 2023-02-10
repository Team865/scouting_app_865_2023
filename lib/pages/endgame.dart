import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/toggle_chip.dart';

class EndgamePage extends StatefulWidget {
  const EndgamePage({super.key});

  @override
  State<EndgamePage> createState() => _EndgamePageState();
}

enum EndgamePosition { none, docked, parked, engaged }

class _EndgamePageState extends State<EndgamePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    void updateEndgamePosition(EndgamePosition value) {
      setState(() {
        appState.endgamePosition = value;
      });
    }

    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Robot endgame position:'),
          ),
          ToggleChip(
              text: "None",
              onPressed: updateEndgamePosition,
              value: EndgamePosition.none,
              selection: appState.endgamePosition),
          ToggleChip(
              text: "Parked",
              onPressed: updateEndgamePosition,
              value: EndgamePosition.parked,
              selection: appState.endgamePosition),
          ToggleChip(
              text: "Docked",
              onPressed: updateEndgamePosition,
              value: EndgamePosition.docked,
              selection: appState.endgamePosition),
          ToggleChip(
              text: "Docked and engaged",
              onPressed: updateEndgamePosition,
              value: EndgamePosition.engaged,
              selection: appState.endgamePosition),
        ]));
  }
}
