import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';
import 'package:num_guess/logic/game_brain.dart';

class HardMode extends StatefulWidget {
  const HardMode({super.key});

  @override
  State<HardMode> createState() => _HardModeState();
}

class _HardModeState extends State<HardMode> {
  String id = 'hard';
  TextEditingController myControler = TextEditingController();
  String guess = "";

  @override
  void dispose() {
    myControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 5, 77),
        title: Text("Hard mode"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GameBrain(id: 'hard'),
      ),
    );
  }
}
