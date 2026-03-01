import 'package:flutter/material.dart';
import 'package:num_guess/customWidgets.dart';
import 'package:num_guess/pages/difficulty.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            Text(
              "ARE YOU READY TO BEGIN?",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Topics(text: "START", page: Difficulty()),
            SizedBox(
              height: 30,
            ),
            Topics(text: "EXIT", page: Scaffold()),
          ],
        ),
      ),
    );
  }
}
