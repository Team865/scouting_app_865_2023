import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/enum_chip.dart';

class EndgamePage extends StatefulWidget {
  const EndgamePage({super.key});

  @override
  State<EndgamePage> createState() => _EndgamePageState();
}

class _EndgamePageState extends State<EndgamePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    void updatePosition(Position value) {
      setState(() {
        appState.endgamePosition = value;
      });
    }

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Robot endgame position:'),
        const SizedBox(height: 8),
        CircleEnumChip(
          text: "None",
          onPressed: updatePosition,
          value: Position.none,
          selection: appState.endgamePosition,
        ),
        CircleEnumChip(
          text: "Parked",
          onPressed: updatePosition,
          value: Position.parked,
          selection: appState.endgamePosition,
        ),
        CircleEnumChip(
          text: "Docked",
          onPressed: updatePosition,
          value: Position.docked,
          selection: appState.endgamePosition,
        ),
        CircleEnumChip(
          text: "Engaged",
          onPressed: updatePosition,
          value: Position.engaged,
          selection: appState.endgamePosition,
        ),
      ],
    ));
  }
}
