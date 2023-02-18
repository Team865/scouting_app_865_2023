import 'package:flutter/material.dart';

class ToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Enum selection;
  final Enum value;
  final IconData icon1;
  final IconData icon2;

  const ToggleChip({
    super.key,
    required this.onPressed,
    required this.text,
    required this.selection,
    required this.value,
    required this.icon1,
    required this.icon2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton.icon(
        onPressed: () => onPressed(value),
        icon: Icon(selection == value ? icon1 : icon2),
        label: Text(text),
      ),
    );
  }
}
