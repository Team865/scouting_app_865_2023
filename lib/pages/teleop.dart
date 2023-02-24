import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state.dart';
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
          ToggleChip(
            text: "Defence",
            onPressed: (value) => setState(() => appState.defense = value),
            isSelected: appState.defense,
          ),
          const SizedBox(height: 8),
          const Text("Robot intake position:"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ToggleChip(
              text: "Ground",
              onPressed: (value) =>
                  setState(() => appState.groundIntake = value),
              isSelected: appState.groundIntake,
            ),
            ToggleChip(
              text: "Single substation",
              onPressed: (value) =>
                  setState(() => appState.singleSubstationIntake = value),
              isSelected: appState.singleSubstationIntake,
            ),
            ToggleChip(
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
            children: List.generate(9, (i) {
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
                children: [
                  i % 3 != 1
                      ? ConeChip(
                          onPressed: updateHigh,
                          isSelected: appState.teleopHigh[i],
                        )
                      : CubeChip(
                          onPressed: updateHigh,
                          isSelected: appState.teleopHigh[i],
                        ),
                  i % 3 != 1
                      ? ConeChip(
                          onPressed: updateMid,
                          isSelected: appState.teleopMid[i],
                        )
                      : CubeChip(
                          onPressed: updateMid,
                          isSelected: appState.teleopMid[i],
                        ),
                  HybridChip(
                    onPressed: updateLow,
                    selection: appState.teleopLow[i],
                  )
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
