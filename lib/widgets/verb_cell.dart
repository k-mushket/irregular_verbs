import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VerbCell extends StatefulWidget {
  final String verbForm;

  const VerbCell({Key? key, required this.verbForm}) : super(key: key);

  @override
  _VerbCellState createState() => _VerbCellState();
}

class _VerbCellState extends State<VerbCell> {
  late FlutterTts flutterTts;
  bool _isSpeaking = false;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();

    flutterTts.setStartHandler(() {
      setState(() {
        _isSpeaking = true;
      });
    });
    flutterTts.setCompletionHandler(() {
      setState(() {
        _isSpeaking = false;
      });
    });
    flutterTts.setErrorHandler((msg) {
      setState(() {
        _isSpeaking = false;
      });
    });
  }

  Future _speak(String text) async {
    if (_isSpeaking) {
      var result = await flutterTts.stop();
      if (result == 1) setState(() => _isSpeaking = false);
    } else {
      var result = await flutterTts.speak(text);
      if (result == 1) setState(() => _isSpeaking = true);
    }
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => _speak(widget.verbForm),
      icon: Icon(_isSpeaking ? Icons.volume_up : Icons.volume_down),
      label: Text(widget.verbForm),
    );
  }
}
