import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';
import 'package:num_guess/logic/game_brain.dart';

class EasyMode extends StatefulWidget {
  const EasyMode({super.key});

  @override
  State<EasyMode> createState() => _EasyModeState();
}

class _EasyModeState extends State<EasyMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Easy mode"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GameBrain(id: 'easy'),
      ),
    );
  }
}
