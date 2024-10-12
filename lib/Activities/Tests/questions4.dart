import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questions4(),
    );
  }
}

class questions4 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<questions4> {
  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What is the short title of Development Charge Rules?",
      "answers": [
        {
          "text":
              "Maharashtra Levy, Assessment & Recovery of Development Charge Rules, 1992",
          "score": 0
        },
        {
          "text":
              "Maharashtra Levy, Assessment & Recovery of Development Charge Rules, 1994",
          "score": 1
        },
        {
          "text":
              "Maharashtra Levy, Assessment & Recovery of Development Charge Rules, 1966",
          "score": 0
        },
        {
          "text":
              "Maharashtra Levy, Assessment & Recovery of Development Charge Rules, 1996",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "The building or part thereof wherein products or material are fabricated, assembled or processed is called as____",
      "answers": [
        {"text": "Institutional Building", "score": 0},
        {"text": "Industrial Building", "score": 1},
        {"text": "Commercial Building", "score": 0},
        {"text": "Residential Building", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the Commencement Date for Development Charges applied according to Levy, Assessment & Recovery of Development Charge Rule, 1994?",
      "answers": [
        {"text": "10 August 1990", "score": 0},
        {"text": "10 August 1992", "score": 0},
        {"text": "10 August 1994", "score": 1},
        {"text": "10 August 1996", "score": 0}
      ]
    },
    {
      "questionText":
          "After the commencement date person commenced to carrying out development which requires permission, then he shall within _____ from date of publication of DC rules in OG make an application to Authority for assessment of DC payable.",
      "answers": [
        {"text": "30 days", "score": 0},
        {"text": "60 days", "score": 0},
        {"text": "90 days", "score": 1},
        {"text": "6 months", "score": 0}
      ]
    },
    {
      "questionText":
          "In which form application for assessment and recovery of development charges are made?",
      "answers": [
        {"text": "Form A", "score": 1},
        {"text": "Form B", "score": 0},
        {"text": "Form 2", "score": 0},
        {"text": "Form 3", "score": 0}
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
