import 'package:flutter/material.dart';

import 'package:irregular_verbs/models/verb.dart';
import 'package:irregular_verbs/services/verb_service.dart';

class VerbCell extends StatefulWidget {
  final String verbForm;

  const VerbCell({super.key, required this.verbForm});

  @override
  State<VerbCell> createState() => _VerbCellState();
}

class _VerbCellState extends State<VerbCell> {
  bool _pressed = false;

  void pressedState() {
    setState(() {
      _pressed = !_pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: pressedState,
      icon: _pressed
          ? const Icon(Icons.volume_up)
          : const Icon(Icons.volume_down),
      label: Text(widget.verbForm),
    );
  }
}
