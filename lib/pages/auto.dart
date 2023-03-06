import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state.dart';
import '../widgets/enum_chip.dart';
import '../widgets/toggle_chip.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  @override
  State<AutoPage> createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    void updatePosition(value) {
      setState(() => appState.autoPosition = value);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ToggleChip(
          text: "Mobility",
          onPressed: (value) => setState(() => appState.autoMobility = value),
          isSelected: appState.autoMobility,
        ),
        const SizedBox(height: 8),
        const Text("Chargepad:"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EnumChip(
              text: "None",
              onPressed: updatePosition,
              value: Position.none,
              selection: appState.autoPosition,
            ),
            EnumChip(
              text: "Docked",
              onPressed: updatePosition,
              value: Position.docked,
              selection: appState.autoPosition,
            ),
            EnumChip(
              text: "Engaged",
              onPressed: updatePosition,
              value: Position.engaged,
              selection: appState.autoPosition,
            ),
          ],
        ),
        const SizedBox(height: 8),
        // const ScoringLegend(),
        const Text("Auto Pieces Scored:"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(9, (i) => i).map((i) {
            void updateHigh(value) {
              setState(() => appState.autoHigh[i] = value);
            }

            void updateMid(value) {
              setState(() => appState.autoMid[i] = value);
            }

            void updateLow(value) {
              setState(() => appState.autoLow[i] = value);
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ToggleChip type depends on column number
              children: [
                i % 3 != 1
                    ? ConeChip(
                        onPressed: updateHigh,
                        isSelected: appState.autoHigh[i],

                      )
                    : CubeChip(
                        onPressed: updateHigh,
                        isSelected: appState.autoHigh[i],
                      ),
                i % 3 != 1
                    ? ConeChip(
                        onPressed: updateMid,
                        isSelected: appState.autoMid[i],
                      )
                    : CubeChip(
                        onPressed: updateMid,
                        isSelected: appState.autoMid[i],
                      ),
                HybridChip(
                  onPressed: updateLow,
                  selection: appState.autoLow[i],
                )
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
