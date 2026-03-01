import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:num_guess/customWidgets.dart';

class GameBrain extends StatefulWidget {
  const GameBrain({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<GameBrain> createState() => _GameBrainState();
}

class _GameBrainState extends State<GameBrain> {
  late int number;

  late int lives;

  @override
  void initState() {
    super.initState();
    if (widget.id == 'easy') {
      lives = 10;
      number = Random().nextInt(100) + 1;
    } else if (widget.id == 'normal') {
      lives = 7;
      number = Random().nextInt(100) + 1;
    } else {
      lives = 5;
      number = Random().nextInt(100) + 1;
    }
  }

  TextEditingController myControler = TextEditingController();
  int? guess;

  @override
  void dispose() {
    myControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('I\'m thinking of a number between 1 and 100'),
        SizedBox(
          height: 10,
        ),
        Text('What\'s your guess?'),
        SizedBox(
          height: 10,
        ),
        Text('You have $lives lives left'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your last guess: '),
            Text('GUESS'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          controller: myControler,
          onSubmitted: (value) {
            setState(() {
              guess = int.parse(value);
              myControler.clear();
            });
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your guess...',
          ),
        ),
        if (guess != null) CheckAnswer(number: number, guess: guess!),
      ],
    );
  }
}
