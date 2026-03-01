import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  const Topics({
    super.key,
    required this.text,
    required this.page,
    required this.color,
    this.clearStack = false,
  });

  final String text;
  final Widget page;
  final Color color;
  final bool clearStack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 40,
        width: 500,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextButton(
          onPressed: () {
            if (!clearStack) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                  (route) => false);
            }
          },
          child: Text(
            text.toUpperCase(),
          ),
        ),
      ),
    );
  }
}

class CheckAnswer extends StatefulWidget {
  const CheckAnswer({
    super.key,
    required this.number,
    required this.guess,
  });

  final int number;
  final int guess;

  @override
  State<CheckAnswer> createState() => _CheckAnswerState();
}

class _CheckAnswerState extends State<CheckAnswer> {
  String guessResult() {
    if (widget.guess == widget.number) {
      String result = 'You win!';
      return result;
    } else if (widget.guess > widget.number) {
      String result = 'That\'s too high!';

      return result;
    } else {
      String result = 'That\'s too low!';
      return result;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(guessResult());
  }
}
