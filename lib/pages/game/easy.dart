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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 5, 77),
        title: Text("Easy mode"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GameBrain(id: 'easy'),
      ),
    );
  }
}


// Column(
//           children: [
//             Text("GOING EASY ON YOU"),
//             SizedBox(
//               height: 30,
//             ),
//             Text(guess),
//             SizedBox(
//               height: 30,
//             ),
//             TextField(
//               controller: myControler,
//               onSubmitted: (value) {
//                 setState(() {
//                   guess = value;
//                   myControler.clear();
//                 });
//               },
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter your guess...',
//               ),
//             ),
//           ],
//         ),