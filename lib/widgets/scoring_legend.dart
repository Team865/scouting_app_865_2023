import 'package:flutter/material.dart';

class ScoringLegend extends StatelessWidget {
  const ScoringLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Scoring Key:"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.change_history),
                    label: const Text("Cone: not selected"))),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.adobe),
                    label: const Text("Cone: selected"))),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.square_outlined),
                    label: const Text("Cube: not selected"))),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.square),
                    label: const Text("Cube: selected"))),
          ]),
          const SizedBox(
            height: 8,
          )
        ]);
  }
}
