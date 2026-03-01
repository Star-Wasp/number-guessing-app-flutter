import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';
import 'package:num_guess/pages/game/easy.dart';
import 'package:num_guess/pages/game/hard.dart';
import 'package:num_guess/pages/game/normal.dart';
import 'package:num_guess/pages/home.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Guessing Game"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("CHOOSE DIFFICULTY"),
            SizedBox(
              height: 30,
            ),
            Topics(
              text: "EASY",
              page: EasyMode(),
            ),
            SizedBox(
              height: 30,
            ),
            Topics(
              text: "NORMAL",
              page: NormalMode(),
            ),
            SizedBox(
              height: 30,
            ),
            Topics(
              text: "HARD",
              page: HardMode(),
            ),
            SizedBox(
              height: 150,
            ),
            Topics(
              text: "BACK TO MENU",
              page: Home(),
            ),
          ],
        ),
      ),
    );
  }
}
