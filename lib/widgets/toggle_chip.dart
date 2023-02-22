import 'package:flutter/material.dart';

class ToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isSelected;
  final IconData active;
  final IconData inactive;

  const ToggleChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.active,
    required this.inactive,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: text != ""
          ? ElevatedButton.icon(
              onPressed: () => onPressed(!isSelected),
              icon: Icon(isSelected ? active : inactive),
              label: Text(text),
            )
          : IconButton(
              onPressed: () => onPressed(!isSelected),
              icon: Icon(isSelected ? active : inactive),
            ),
    );
  }
}

class CircleToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isSelected;

  const CircleToggleChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: text,
      active: Icons.circle,
      inactive: Icons.circle_outlined,
    );
  }
}

class ConeToggleChip extends StatelessWidget {
  final Function onPressed;
  final bool isSelected;

  const ConeToggleChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: "",
      active: Icons.adobe,
      inactive: Icons.change_history,
    );
  }
}

class CubeToggleChip extends StatelessWidget {
  final Function onPressed;
  final bool isSelected;

  const CubeToggleChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: "",
      active: Icons.square,
      inactive: Icons.square_outlined,
    );
  }
}
