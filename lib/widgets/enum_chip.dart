import 'package:flutter/material.dart';

import '../main.dart';

class EnumChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Enum selection;
  final Enum? none;
  final Enum value;
  final IconData active;
  final IconData inactive;

  const EnumChip({
    super.key,
    required this.onPressed,
    required this.text,
    required this.selection,
    required this.value,
    required this.active,
    required this.inactive,
    this.none,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: text != ""
          ? ElevatedButton.icon(
              onPressed: () => selection == value && none != null
                  ? onPressed(none)
                  : onPressed(value),
              icon: Icon(selection == value ? active : inactive),
              label: Text(text),
            )
          : IconButton(
              onPressed: () => selection == value && none != null
                  ? onPressed(none)
                  : onPressed(value),
              icon: Icon(selection == value ? active : inactive),
            ),
    );
  }
}

class CircleEnumChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Enum selection;
  final Enum? none;
  final Enum value;

  const CircleEnumChip({
    super.key,
    required this.onPressed,
    required this.text,
    required this.selection,
    required this.value,
    this.none,
  });

  @override
  Widget build(BuildContext context) {
    return EnumChip(
      onPressed: onPressed,
      text: text,
      selection: selection,
      value: value,
      none: none,
      active: Icons.circle,
      inactive: Icons.circle_outlined,
    );
  }
}

class HybridEnumChip extends StatelessWidget {
  final Function onPressed;
  final Enum selection;

  const HybridEnumChip({
    super.key,
    required this.onPressed,
    required this.selection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: Column(
        children: [
          EnumChip(
            onPressed: onPressed,
            text: "",
            selection: selection,
            value: Piece.cone,
            none: Piece.none,
            active: Icons.adobe,
            inactive: Icons.change_history,
          ),
          EnumChip(
            onPressed: onPressed,
            text: "",
            selection: selection,
            value: Piece.cube,
            none: Piece.none,
            active: Icons.square,
            inactive: Icons.square_outlined,
          ),
        ],
      ),
    );
  }
}
