import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'package:quiz_app/result.dart';

import 'anser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'QUIZ APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0;
  int totalScore = 0;
  void ansQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s the plural of "Women" ?',
        'answers': [
          {'text': 'Womans', 'score': 0},
          {'text': 'Womanes', 'score': 0},
          {'text': 'Women', 'score': 1},
        ],
      },
      {
        'questionText': '"the flowers" is proper noun of Common noun?',
        'answers': [
          {'text': 'Proper noun', 'score': 0},
          {'text': 'Common noun', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s the plural of "day" ?',
        'answers': [
          {'text': 'days', 'score': 1},
          {'text': 'dayes', 'score': 0},
          {'text': 'daies', 'score': 0},
        ],
      },
      {
        'questionText': 'What\'s the plural of "Knife" ?',
        'answers': [
          {'text': 'Knifes', 'score': 0},
          {'text': 'Knifies', 'score': 0},
          {'text': 'knives', 'score': 1},
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: [
                Question(
                  questionText:
                      questions[questionIndex]['questionText'].toString(),
                ),
                ...(questions[questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((anser) {
                  return Anser(
                      ansQuestion: () => ansQuestion(anser['score'] as int),
                      anser: anser['text'].toString());
                }).toList(),
              ],
            )
          : Result(
              totalscore: totalScore,
              reset: resetQuiz,
            ),
    );
  }
}
