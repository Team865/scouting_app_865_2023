import 'package:flutter/material.dart';

class BaseToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isSelected;
  final IconData active;
  final IconData inactive;

  const BaseToggleChip({
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

class ToggleChip extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isSelected;

  const ToggleChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return BaseToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: text,
      active: Icons.circle,
      inactive: Icons.circle_outlined,
    );
  }
}

class ConeChip extends StatelessWidget {
  final Function onPressed;
  final bool isSelected;

  const ConeChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BaseToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: "",
      active: Icons.adobe,
      inactive: Icons.change_history,
    );
  }
}

class CubeChip extends StatelessWidget {
  final Function onPressed;
  final bool isSelected;

  const CubeChip({
    super.key,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BaseToggleChip(
      onPressed: onPressed,
      isSelected: isSelected,
      text: "",
      active: Icons.square,
      inactive: Icons.square_outlined,
    );
  }
}
