import 'package:flutter/material.dart';

class Anser extends StatelessWidget {
  final VoidCallback ansQuestion;
  final String anser;
  const Anser({Key? key, required this.ansQuestion, required this.anser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
      width: double.infinity,
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            anser,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        onPressed: ansQuestion,
      ),
    );
  }
}
