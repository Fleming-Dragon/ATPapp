import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questions3(),
    );
  }
}

class questions3 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<questions3> {
  final List<Map<String, Object>> _questions = [
    {
      "questionText":
          "What is the short title of the Maharashtra Town Planning Schemes rules?",
      "answers": [
        {
          "text": "The Maharashtra Town Planning Schemes rules, 1915",
          "score": 0
        },
        {
          "text": "The Maharashtra Town Planning Schemes rules, 1966",
          "score": 0
        },
        {
          "text": "The Maharashtra Town Planning Schemes rules, 1974",
          "score": 1
        },
        {
          "text": "The Maharashtra Town Planning Schemes rules, 1992",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "At least in which month from the date of declaration of intention to make a scheme (declaration) in OG, PA shall complete the framing of the tentative proposals of the draft scheme & shall forward the same to DTP for consultation? (Without extension)",
      "answers": [
        {"text": "1st month", "score": 0},
        {"text": "3rd month", "score": 0},
        {"text": "6th month", "score": 1},
        {"text": "9th month", "score": 0}
      ]
    },
    {
      "questionText":
          "At least in which month from the date of declaration of intention to make a scheme (declaration) in OG, PA shall complete the framing of the tentative proposals of the draft scheme & shall forward the same to DTP for consultation? (With extension)",
      "answers": [
        {"text": "1st month", "score": 0},
        {"text": "3rd month", "score": 0},
        {"text": "6th month", "score": 0},
        {"text": "9th month", "score": 1}
      ]
    },
    {
      "questionText":
          "The suggestions & objections on draft scheme are invited from any person affected thereby communicates in writing within_____ from the date of publication of draft scheme in Official Gazette.",
      "answers": [
        {"text": "30 days", "score": 0},
        {"text": "45 days", "score": 0},
        {"text": "60 days", "score": 1},
        {"text": "No suggestions & objections are invited", "score": 0}
      ]
    },
    {
      "questionText":
          "The draft scheme shall contain an index map on scale not smaller than_____",
      "answers": [
        {"text": "1:5000", "score": 0},
        {"text": "1:10,000", "score": 1},
        {"text": "1:50,000", "score": 0},
        {"text": "1:1,00,000", "score": 0}
      ]
    },
    {
      "questionText":
          "While preparing draft scheme the original plots, existing building, proposed plots and final plots are drawn to the scale not smaller than_____",
      "answers": [
        {"text": "1:500", "score": 1},
        {"text": "1:1000", "score": 0},
        {"text": "1:2500", "score": 0},
        {"text": "1:5000", "score": 0}
      ]
    },
    {
      "questionText":
          "In which form the redistribution & valuation statement are given which shows the estimated amounts to be paid to or by each of the owner included in the scheme?",
      "answers": [
        {"text": "Form 1", "score": 0},
        {"text": "Form 2", "score": 0},
        {"text": "Form 3", "score": 1},
        {"text": "Form 4", "score": 0}
      ]
    },
    {
      "questionText": "In which form finance of the scheme is mentioned?",
      "answers": [
        {"text": "Form 1", "score": 0},
        {"text": "Form 2", "score": 1},
        {"text": "Form 3", "score": 0},
        {"text": "Form 4", "score": 0}
      ]
    },
    {
      "questionText":
          "According to Maharashtra Regional Town Planning Scheme Rule, 1974 which form is used for Redistribution & Valuation Statement of such Schemes?",
      "answers": [
        {"text": "Form 1", "score": 0},
        {"text": "Form 2", "score": 0},
        {"text": "Form 3", "score": 1},
        {"text": "Form 4", "score": 0}
      ]
    },
    {
      "questionText":
          "In Maharashtra Regional & Town Planning Schemes Rule, 1974 Form 2 is used for______",
      "answers": [
        {"text": "Commencement Certificate", "score": 0},
        {"text": "Finance of the Town Planning Scheme", "score": 1},
        {"text": "Intimation of TPS", "score": 0},
        {"text": "Taking Advance Possession", "score": 0}
      ]
    },
    {
      "questionText":
          "Permission is granted by Planning Authority then in which form Commencement Certificate is issued to owner by Planning Authority?",
      "answers": [
        {"text": "Form 2", "score": 0},
        {"text": "Form 3", "score": 0},
        {"text": "Form 4", "score": 0},
        {"text": "Form 5", "score": 1}
      ]
    },
    {
      "questionText":
          "Before proceeding to deal in details with any land, building or plot or any other particulars in draft TPS to be dealt with, the Arbitrator shall serve a special notice in which form?",
      "answers": [
        {"text": "Form 2", "score": 0},
        {"text": "Form 3", "score": 0},
        {"text": "Form 4", "score": 1},
        {"text": "Form 5", "score": 0}
      ]
    },
    {
      "questionText":
          "Arbitrator shall communicate in _______ the decision taken in respect of each plot to owner or person interested.",
      "answers": [
        {"text": "Form 5", "score": 1},
        {"text": "Form 4", "score": 0},
        {"text": "Form 2", "score": 0},
        {"text": "Form 1", "score": 0}
      ]
    },
    {
      "questionText":
          "Which form is used to take advance possession by Arbitrator in TPS?",
      "answers": [
        {"text": "Form 3", "score": 0},
        {"text": "Form 5", "score": 0},
        {"text": "Form 6", "score": 1},
        {"text": "None of above", "score": 0}
      ]
    },
    {
      "questionText":
          "On an application of owner of any plot included in the final scheme, in which form the certificate specifying the area & boundaries of reconstituted plot, the nature of the tenure, title & name of the person to whom plot is allotted is issued?",
      "answers": [
        {"text": "Form 3", "score": 0},
        {"text": "Form 4", "score": 0},
        {"text": "Form 5", "score": 1},
        {"text": "Form 7", "score": 0}
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_questionIndex > 0) {
        _questionIndex -= 1;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _navigateToMyChapters(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyChaptersScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (_questionIndex < _questions.length) ...[
              Text(
                _questions[_questionIndex]['questionText'] as String,
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      textStyle: TextStyle(fontSize: 18),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(answer['text'] as String),
                    ),
                    onPressed: () => _answerQuestion(answer['score'] as int),
                  ),
                );
              }).toList(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _previousQuestion,
                    child: Text('Prev'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _questionIndex < _questions.length - 1
                        ? () => _answerQuestion(0)
                        : _resetQuiz,
                    child: Text(_questionIndex < _questions.length - 1
                        ? 'Next'
                        : 'Submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'ATP Aspirants',
                style: TextStyle(
                    color: Colors.purple, decoration: TextDecoration.underline),
              ),
            ] else ...[
              Center(
                child: Text(
                  'You scored $_totalScore out of ${_questions.length}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                onPressed: () => MyChaptersScreen(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'New Chapter',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
