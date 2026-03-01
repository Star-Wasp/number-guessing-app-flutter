import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';
import 'package:num_guess/logic/game_brain.dart';

class NormalMode extends StatefulWidget {
  const NormalMode({super.key});

  @override
  State<NormalMode> createState() => _NormalModeState();
}

class _NormalModeState extends State<NormalMode> {
  String id = 'normal';
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
        title: Text("Normal mode"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GameBrain(id: 'normal'),
      ),
    );
  }
}
