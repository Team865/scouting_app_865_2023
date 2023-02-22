import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/enum_chip.dart';
import '../widgets/toggle_chip.dart';
import '../widgets/scoring_legend.dart';

class TeleopPage extends StatefulWidget {
  const TeleopPage({super.key});

  @override
  State<TeleopPage> createState() => _TeleopPageState();
}

class _TeleopPageState extends State<TeleopPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleToggleChip(
          text: "Defence",
          onPressed: (value) => setState(() => appState.defense = value),
          isSelected: appState.defense,
        ),
        const SizedBox(height: 8),
        const Text("Robot intake position:"),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          CircleToggleChip(
            text: "Ground",
            onPressed: (value) => setState(() => appState.groundIntake = value),
            isSelected: appState.groundIntake,
          ),
          CircleToggleChip(
            text: "Single substation",
            onPressed: (value) =>
                setState(() => appState.singleSubstationIntake = value),
            isSelected: appState.singleSubstationIntake,
          ),
          CircleToggleChip(
            text: "Double substation",
            onPressed: (value) =>
                setState(() => appState.doubleSubstationIntake = value),
            isSelected: appState.doubleSubstationIntake,
          ),
        ]),
        const SizedBox(height: 8),
        const ScoringLegend(),
        const Text("Teleop Pieces Scored:"),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // acts like another build function, but for each column
            children: List.generate(9, (i) => i).map((i) {
              void updateHigh(value) {
                setState(() => appState.teleopHigh[i] = value);
              }

              void updateMid(value) {
                setState(() => appState.teleopMid[i] = value);
              }

              void updateLow(value) {
                setState(() => appState.teleopLow[i] = value);
              }

              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ToggleChip type depends on column number
                  children: i % 3 != 1
                      ? [
                          ConeToggleChip(
                            onPressed: updateHigh,
                            isSelected: appState.teleopHigh[i],
                          ),
                          ConeToggleChip(
                            onPressed: updateMid,
                            isSelected: appState.teleopMid[i],
                          ),
                          HybridEnumChip(
                            onPressed: updateLow,
                            selection: appState.teleopLow[i],
                          )
                        ]
                      : [
                          CubeToggleChip(
                            onPressed: updateHigh,
                            isSelected: appState.teleopHigh[i],
                          ),
                          CubeToggleChip(
                            onPressed: updateMid,
                            isSelected: appState.teleopMid[i],
                          ),
                          HybridEnumChip(
                            onPressed: updateLow,
                            selection: appState.teleopLow[i],
                          )
                        ]);
            }).toList()),
      ],
    ));
  }
}
