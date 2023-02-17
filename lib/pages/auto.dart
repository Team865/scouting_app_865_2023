import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/toggle_chip.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  @override
  State<AutoPage> createState() => _AutoPageState();
}

enum AutoPosition { none, docked, engaged }

enum AutoMobility { no, yes }

int autoCubes = 0;

class _AutoPageState extends State<AutoPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    void updateAutoPosition(AutoPosition value) {
      setState(() {
        appState.autoPosition = value;
      });
    }

    void updateAutoCones(int cng) {
      setState(() {
        appState.autoCones = appState.autoCones + cng;
      });
    }

    updateAutoCubes(int cng) {
      setState(() {
        appState.autoCubes = appState.autoCubes + cng;
      });
    }

    void updateAutoMobility(AutoMobility value) {
      setState(() {
        appState.autoMobility = value;
      });
    }

    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          const Text("Robot auto mobility"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ToggleChip(
                text: "No",
                onPressed: updateAutoMobility,
                value: AutoMobility.no,
                selection: appState.autoMobility),
            ToggleChip(
                text: "Yes",
                onPressed: updateAutoMobility,
                value: AutoMobility.yes,
                selection: appState.autoMobility),
          ]),
          const SizedBox(height: 8),
          const Text("Robot auto position"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ToggleChip(
                text: "None",
                onPressed: updateAutoPosition,
                value: AutoPosition.none,
                selection: appState.autoPosition),
            ToggleChip(
                text: "Docked",
                onPressed: updateAutoPosition,
                value: AutoPosition.docked,
                selection: appState.autoPosition),
            ToggleChip(
                text: "Engaged",
                onPressed: updateAutoPosition,
                value: AutoPosition.engaged,
                selection: appState.autoPosition),
          ]),
          const SizedBox(height: 8),
          const Text("Auto cones scored"),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: () {
                        updateAutoCones(-1);
                      },
                      icon: const Icon(Icons.minimize),
                      label: const Text(""),
                    ),
                    Text(
                      '${appState.autoCones}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        updateAutoCones(1);
                      },
                      icon: const Icon(Icons.add),
                      label: const Text(""),
                    ),
                  ])),
          const SizedBox(height: 8),
          const Text("Auto cubes scored"),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: () {
                        updateAutoCubes(-1);
                      },
                      icon: const Icon(Icons.minimize),
                      label: const Text(""),
                    ),
                    Text(
                      '${appState.autoCubes}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        updateAutoCubes(1);
                      },
                      icon: const Icon(Icons.add),
                      label: const Text(""),
                    ),
                  ]))
        ]));
  }
}
