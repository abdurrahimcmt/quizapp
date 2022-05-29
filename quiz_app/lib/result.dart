import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final VoidCallback reset;
  const Result({Key? key, required this.totalscore, required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            totalscore.toString() + ' Currect Answers',
            style: const TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 28, 3, 121),
            ),
          ),
        ),
        TextButton(
          onPressed: reset,
          child: const Text(
            'Reset',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 122, 11, 11),
            ),
          ),
        ),
      ],
    );
  }
}
