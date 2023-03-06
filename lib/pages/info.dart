import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Choose robot based what you were assigned on screen,\nbut mark where they are on the field in the app"),
        const SizedBox(height: 10),

        const Text("Teams on screen:"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Blue 1"),
              Text("Blue 2"),
              Text("Blue 3"),
            ],
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Red 1"),
              Text("Red 2"),
              Text("Red 3"),
            ],
          ),
          ],
        ),
        const SizedBox(height: 10),
        const Text("Positions in field:"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Blue 1"),
                Text("Blue 2"),
                Text("Blue 3"),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Red 3"),
                Text("Red 2"),
                Text("Red 1"),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.square_outlined),
            Text("Cube Slot"),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.square),
            Text("Cube Scored"),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.change_history),
            Text("Cone Slot"),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.adobe),
            Text("Cone Scored"),
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white)),
            padding: const EdgeInsets.all(10),
    child: Column(
      children: const [
            Icon(Icons.change_history),
            Icon(Icons.square_outlined),
      ],
    ),
    ),
    const SizedBox(width: 5),
    const Text("Hybrid Goal)")
          ],
        ),
      ],
    );
  }
}