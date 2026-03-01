import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  const Topics({
    super.key,
    required this.text,
    required this.page,
    required this.color,
  });

  final String text;
  final Widget page;
  final Color color;

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Text(
            text.toUpperCase(),
          ),
        ),
      ),
    );
  }
}
