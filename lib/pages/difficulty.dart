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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 5, 77),
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
                color: const Color.fromARGB(255, 114, 253, 119)),
            SizedBox(
              height: 30,
            ),
            Topics(
                text: "NORMAL",
                page: NormalMode(),
                color: const Color.fromARGB(255, 98, 184, 255)),
            SizedBox(
              height: 30,
            ),
            Topics(
                text: "HARD",
                page: HardMode(),
                color: const Color.fromARGB(255, 255, 122, 113)),
            SizedBox(
              height: 150,
            ),
            Topics(
                text: "BACK TO MENU",
                page: Home(),
                color: const Color.fromARGB(255, 0, 140, 255)),
          ],
        ),
      ),
    );
  }
}
