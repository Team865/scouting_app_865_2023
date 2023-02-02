import 'package:flutter/material.dart';

class ToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Enum selection;
  final Enum value;

  const ToggleChip({
    super.key,
    required this.onPressed,
    required this.text,
    required this.selection,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton.icon(
        onPressed: () => onPressed(value),
        icon: Icon(selection == value ? Icons.circle : Icons.circle_outlined),
        label: Text(text),
      ),
    );
  }
}
