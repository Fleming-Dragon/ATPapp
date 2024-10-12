import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questions5(),
    );
  }
}

class questions5 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<questions5> {
  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What is the short title of Compounded Structure Rules?",
      "answers": [
        {
          "text":
              "Maharashtra Town Planning (Compounded Structures) Rules, 2015",
          "score": 0
        },
        {
          "text":
              "Maharashtra Town Planning (Compounded Structures) Rules, 2016",
          "score": 0
        },
        {
          "text":
              "Maharashtra Town Planning (Compounded Structures) Rules, 2017",
          "score": 1
        },
        {
          "text":
              "Maharashtra Town Planning (Compounded Structures) Rules, 2018",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "The Rules of Compounded Structure are applicable to unauthorised development carried out ________ within jurisdiction of Local Authority/ Planning Authority & New Town Development Authority of MRTP Act, 1966.",
      "answers": [
        {"text": "Only before 31/12/2015", "score": 1},
        {"text": "Only after 31/12/2015", "score": 0},
        {"text": "On or after 31/12/2015", "score": 0},
        {"text": "On or before 31/12/2015", "score": 0}
      ]
    },
    {
      "questionText":
          "According to MRTP Compounded Structure Rules, Structurally unsafe building means?",
      "answers": [
        {"text": "Building declared as unauthorised structure", "score": 0},
        {"text": "Building declared as compounded structure", "score": 0},
        {"text": "Building declared as dangerous structure", "score": 1},
        {"text": "Building declared as permissible structure", "score": 0}
      ]
    },
    {
      "questionText":
          "Which of the following structure can be considered as compounded structure if the development is carried out in___",
      "answers": [
        {"text": "Only A", "score": 0},
        {"text": "Only B", "score": 0},
        {"text": "Only C", "score": 0},
        {"text": "None of above", "score": 1}
      ]
    },
    {
      "questionText":
          "Which of the following Unauthorised Development can be considered as Compounded Structure?",
      "answers": [
        {"text": "A & B only", "score": 0},
        {"text": "A & C only", "score": 0},
        {"text": "B & C only", "score": 0},
        {"text": "All A, B & C", "score": 1}
      ]
    },
    {
      "questionText":
          "Development which is permissible in Residential/Commercial/Public Semi-public/Industrial Zone as per prevailing DCR but constructed without obtaining prior permissions of the authority shall be considered for declaration as compounded structure by_____",
      "answers": [
        {"text": "Charging compounding charges", "score": 1},
        {"text": "Charging Premium charges", "score": 0},
        {"text": "Charging Development charges", "score": 0},
        {"text": "Charging Levy charges", "score": 0}
      ]
    },
    {
      "questionText":
          "For which criteria Unauthorised development (Residential or other use) carried out on other than Residential or Commercial or Public-semipublic or Industrial zone considered for declaration as compounded structure?",
      "answers": [
        {"text": "A & B only", "score": 0},
        {"text": "A & C only", "score": 0},
        {"text": "All A, B & C", "score": 1},
        {"text": "None of above", "score": 0}
      ]
    },
    {
      "questionText":
          "Within how many days every PA should make public notice for inviting applications from the owner or occupier of unauthorised development for consideration to declare such structure as compounded structure?",
      "answers": [
        {
          "text":
              "Within one month from commencement of Compounded Structure Rules",
          "score": 1
        },
        {
          "text":
              "Within three months from commencement of Compounded Structure Rules",
          "score": 0
        },
        {
          "text":
              "Within six months from commencement of Compounded Structure Rules",
          "score": 0
        },
        {
          "text":
              "Within one year from commencement of Compounded Structure Rules",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "After declaring unauthorised development as compounded structure, which type of work is permissible in that structure?",
      "answers": [
        {"text": "A & B only", "score": 0},
        {"text": "A & C only", "score": 0},
        {"text": "B & C only", "score": 0},
        {"text": "All A, B & C", "score": 1}
      ]
    },
    {
      "questionText":
          "All the money received by the PA as premium, infrastructure charges & Compounding charges shall be credited to separate head of account and used for_______",
      "answers": [
        {
          "text":
              "Providing public amenities, utilities & services within the jurisdiction of PA",
          "score": 1
        },
        {
          "text":
              "Providing public amenities, utilities & services within respective area only",
          "score": 0
        },
        {
          "text": "Acquiring neighbourhood Land for such respective area",
          "score": 0
        },
        {
          "text":
              "State Government will decide the purpose of use of such money credited",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "If the width of road is 9m then what is the permissible height of unauthorised building which can be considered as compounded structure?",
      "answers": [
        {"text": "Up to 15m", "score": 1},
        {"text": "Up to 18m", "score": 0},
        {"text": "Up to 24m", "score": 0},
        {"text": "Up to 36m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the maximum permissible height limit for unauthorised development to be considered as Compounded Structure?",
      "answers": [
        {"text": "Up to 24m only", "score": 0},
        {"text": "Up to 30m only", "score": 0},
        {"text": "Up to 36m only", "score": 1},
        {"text": "Up to 70m only", "score": 0}
      ]
    },
    {
      "questionText":
          "In respect of unauthorised development to be declared as Compounded Structure in addition to Development Charges-_______ shall be levied and recovered.",
      "answers": [
        {
          "text":
              "Infrastructure charges = 2× Development charges & Compounding Charges = 2× Development Charges",
          "score": 0
        },
        {
          "text":
              "Infrastructure charges≥ 2Development charges & Compounding Charges> 2× Development Charges",
          "score": 0
        },
        {
          "text":
              "Infrastructure charges= Development charges & Compounding Charges≥ 2× Development Charges",
          "score": 1
        },
        {
          "text":
              "Infrastructure charges= Development charges & Compounding Charges= Development Charges",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "What is the permissible height of building with respect to Road width of 6 m to declare such building as compounded structure?",
      "answers": [
        {"text": "Up to 10 m", "score": 1},
        {"text": "Up to 15 m", "score": 0},
        {"text": "Up to 24 m", "score": 0},
        {"text": "Up to 36 m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the permissible height of building with respect to Road width of 9 m to declare such building as compounded structure?",
      "answers": [
        {"text": "Up to 10 m", "score": 0},
        {"text": "Up to 15 m", "score": 1},
        {"text": "Up to 24 m", "score": 0},
        {"text": "Up to 36 m", "score": 0}
      ]
    },
    {
      "questionText":
          "If the building height is up to 10 m what will be the minimum setback required for unauthorised structure to be considered as compounded structure?",
      "answers": [
        {"text": "3 m", "score": 0},
        {"text": "2 m", "score": 0},
        {"text": "1.5 m", "score": 1},
        {"text": "0.75 m", "score": 0}
      ]
    },
    {
      "questionText":
          "If the building height is more than 24 m what will be the minimum setback required for unauthorised structure to be considered as compounded structure?",
      "answers": [
        {
          "text":
              "75 % of required setback or as decided by Chief Fire Officer",
          "score": 1
        },
        {
          "text":
              "50 % of required setback or as decided by Chief Fire Officer",
          "score": 0
        },
        {
          "text":
              "25 % of required setback or as decided by Chief Fire Officer",
          "score": 0
        },
        {
          "text": "No such building can be converted into compounded structure",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "What is the minimum criteria of width of approach road for Gaothan Area to declare unauthorised structure as compounded structure for purely Residential use?",
      "answers": [
        {"text": "3.00 m", "score": 0},
        {"text": "4.50 m", "score": 1},
        {"text": "6.00 m", "score": 0},
        {"text": "9.00 m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the minimum criteria of width of approach road for Gaothan Area to declare unauthorised structure as compounded structure for Mix use occupies?",
      "answers": [
        {"text": "3.00 m", "score": 0},
        {"text": "4.50 m", "score": 1},
        {"text": "6.00 m", "score": 0},
        {"text": "9.00 m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the minimum criteria of width of approach road for outside the Gaothan Area to declare unauthorised structure as compounded structure for purely Residential use?",
      "answers": [
        {"text": "3.00 m", "score": 0},
        {"text": "4.50 m", "score": 0},
        {"text": "6.00 m", "score": 1},
        {"text": "9.00 m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the minimum criteria of width of approach road for outside the Gaothan Area to declare unauthorised structure as compounded structure for Mix use occupies?",
      "answers": [
        {"text": "3.00 m", "score": 0},
        {"text": "4.50 m", "score": 0},
        {"text": "6.00 m", "score": 1},
        {"text": "9.00 m", "score": 0}
      ]
    },
    {
      "questionText":
          "If unauthorised layout/plot/subdivision which are as per Development Control Regulations can be regularised by charging______",
      "answers": [
        {
          "text": "One-time compounded charges as specified by the Government",
          "score": 1
        },
        {
          "text": "Two-time compounded charges as specified by the Government",
          "score": 0
        },
        {
          "text":
              "Three-time compounded charges as specified by the Government",
          "score": 0
        },
        {"text": "No such charges as applicable", "score": 0}
      ]
    },
    {
      "questionText":
          "If unauthorised layout/plot/subdivision which are not as per Development Control Regulations can be regularised by charging______",
      "answers": [
        {"text": "Compounding charges only", "score": 0},
        {
          "text": "Double the Compounded charges + value of compulsory ROS",
          "score": 0
        },
        {"text": "Compounded charges + value of compulsory ROS", "score": 1},
        {
          "text": "Compounded charges + double the value of compulsory ROS",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "If the open spaces are not available in the unauthorised layout, in such cases Floor Space Index shall be the _____ of the basic Floor Space Index.",
      "answers": [
        {"text": "80%", "score": 0},
        {"text": "75%", "score": 0},
        {"text": "60%", "score": 0},
        {"text": "50", "score": 1}
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
