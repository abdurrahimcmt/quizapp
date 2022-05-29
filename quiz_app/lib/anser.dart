import 'package:flutter/material.dart';

class Anser extends StatelessWidget {
  final VoidCallback ansQuestion;
  final String anser;
  const Anser({Key? key, required this.ansQuestion, required this.anser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        child: Text(
          anser,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: ansQuestion,
      ),
    );
  }
}
