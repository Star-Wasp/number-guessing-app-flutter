import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';

class HardMode extends StatelessWidget {
  const HardMode({super.key});

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
            Text("HARD MODE ACTIVE"),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
