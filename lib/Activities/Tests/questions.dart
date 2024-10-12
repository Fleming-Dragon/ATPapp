import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questions1(),
    );
  }
}

class questions1 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<questions1> {
  final List<Map<String, Object>> _questions = [
    {
      "questionText":
          "What is the short title of Regional Planning Rules of MRTP Act, 1966?",
      "answers": [
        {
          "text":
              "Maharashtra Regional and Town Planning (Regional Plan) Rules, 1966",
          "score": 1
        },
        {
          "text": "Maharashtra Town Planning (Regional Plan) Rules, 1966",
          "score": 0
        },
        {"text": "Maharashtra Regional Planning Rules, 1966", "score": 0},
        {
          "text": "Maharashtra Town and Regional Planning Rules, 1966",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "The members of the Regional Board shall hold the office for a period of (without extension) from the date of the notification of constituting the RP Board.",
      "answers": [
        {"text": "One year", "score": 0},
        {"text": "Two years", "score": 1},
        {"text": "Three years", "score": 0},
        {"text": "Five years", "score": 0}
      ]
    },
    {
      "questionText":
          "If the member of RP Board has been appointed from a local authority and if he ceases to be a member of the local authority, then membership of such member in RP Board shall",
      "answers": [
        {"text": "Continue", "score": 0},
        {"text": "Not continue", "score": 1},
        {"text": "Be reviewed", "score": 0},
        {"text": "Be extended", "score": 0}
      ]
    },
    {
      "questionText":
          "If the date of notification of RP Board was 26 August 2020, then up to which date board members shall hold office if limits of Region were altered by notification in Official Gazette on 05 March 2021? (Without extension)",
      "answers": [
        {"text": "26 August 2021", "score": 0},
        {"text": "26 August 2022", "score": 1},
        {"text": "05 March 2022", "score": 0},
        {"text": "05 March 2023", "score": 0}
      ]
    },
    {
      "questionText":
          "On the request of the RP board, State Government may extend the terms of office of members by such period not exceeding at a time but in any case, not exceeding in aggregate.",
      "answers": [
        {
          "text":
              "Not more than six months at a time but in any case, not more than twelve months",
          "score": 1
        },
        {
          "text":
              "Not more than six months at a time but in any case, not more than eighteen months",
          "score": 0
        },
        {
          "text":
              "Not more than twelve months at a time but in any case, not more than eighteen months",
          "score": 0
        },
        {
          "text":
              "Not more than twelve months at a time but in any case, not more than twenty-four months",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "Which member shall not be disqualified for being appointed or continuing as a member of Regional Board so long as he is in the employment of the Board?",
      "answers": [
        {"text": "Special Purpose Members", "score": 1},
        {"text": "Local Authority Members", "score": 0},
        {"text": "Government Representatives", "score": 0},
        {"text": "Expert Members", "score": 0}
      ]
    },
    {
      "questionText":
          "For which of the following reasons shall members cease to be a member of RP Board?",
      "answers": [
        {"text": "1 only", "score": 0},
        {"text": "2 only", "score": 0},
        {"text": "3 only", "score": 0},
        {"text": "1 or 2 or 3 all", "score": 1}
      ]
    },
    {
      "questionText":
          "If any member is absent without permission of the board in writing from consecutive meetings thereof or from all the meetings of the board for consecutive months, he shall cease to be a member of RP board.",
      "answers": [
        {"text": "Three & Six", "score": 0},
        {"text": "Four & Eight", "score": 0},
        {"text": "Five & Ten", "score": 0},
        {"text": "Six & Twelve", "score": 1}
      ]
    },
    {
      "questionText":
          "Who will not have a chance to vote if the Board thinks that person is directly or indirectly concerned or interested in any proposal before the Board & such disclosure is recorded in minutes of Board?",
      "answers": [
        {"text": "The person concerned", "score": 0},
        {"text": "The person interested", "score": 0},
        {"text": "The person who disclosed", "score": 0},
        {"text": "All of the above", "score": 1}
      ]
    },
    {
      "questionText":
          "By notification in OG, the State Govt declared the region on 30 August 2020, the Board was formed on 15 September 2020, before which date the Board should carry out surveys & prepare ELU? (Without extension)",
      "answers": [
        {"text": "15 September 2021", "score": 1},
        {"text": "15 September 2022", "score": 0},
        {"text": "30 August 2021", "score": 0},
        {"text": "30 August 2022", "score": 0}
      ]
    },
    {
      "questionText":
          "In how many months shall the Board prepare & publish the draft Regional Plan by notification in Official Gazette from the date of Constitution of the Regional Planning Board? (Without extension for ELU)",
      "answers": [
        {"text": "Twelve months", "score": 0},
        {"text": "Eighteen months", "score": 1},
        {"text": "Twenty-four months", "score": 0},
        {"text": "Thirty months", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the extended period to carry out survey and preparation of ELU after the time period gets exhausted due to adequate reasons?",
      "answers": [
        {
          "text":
              "Not more than six months at a time but in any case, not more than twelve months",
          "score": 1
        },
        {
          "text":
              "Not more than six months at a time but in any case, not more than eighteen months",
          "score": 0
        },
        {
          "text":
              "Not more than twelve months at a time but in any case, not more than twenty-four months",
          "score": 0
        },
        {
          "text":
              "Not more than twelve months at a time but in any case, not more than thirty-six months",
          "score": 0
        }
      ]
    },
    {
      "questionText":
          "The total time limit for preparation and publication of Draft Regional Plan from submission of existing land use map will be:",
      "answers": [
        {"text": "Twelve months + Twelve months", "score": 0},
        {"text": "Twelve months + Eighteen months", "score": 1},
        {"text": "Eighteen months + Eighteen months", "score": 0},
        {"text": "Eighteen months + Twenty-four months", "score": 0}
      ]
    },
    {
      "questionText":
          "All the plans & maps prepared in connection with surveys and existing land use map shall be drawn to a scale:",
      "answers": [
        {"text": "Not smaller than 10 cm to 25 km", "score": 1},
        {"text": "Not smaller than 20 cm to 50 km", "score": 0},
        {"text": "Not smaller than 15 cm to 30 km", "score": 0},
        {"text": "Not smaller than 25 cm to 50 km", "score": 0}
      ]
    },
    {
      "questionText":
          "The index maps and documents shall be prepared to the scale:",
      "answers": [
        {"text": "Not smaller than 10 cm to 25 km", "score": 1},
        {"text": "Not smaller than 20 cm to 50 km", "score": 0},
        {"text": "Not smaller than 15 cm to 30 km", "score": 0},
        {"text": "Not smaller than 25 cm to 50 km", "score": 0}
      ]
    },
    {
      "questionText":
          "The other maps & documents shall further illustrate & amplify the proposals of the Regional Plan & maps are drawn to the scale:",
      "answers": [
        {"text": "Not smaller than 10 cm to 25 km", "score": 1},
        {"text": "Not smaller than 20 cm to 50 km", "score": 0},
        {"text": "Not smaller than 15 cm to 30 km", "score": 0},
        {"text": "Not smaller than 25 cm to 50 km", "score": 0}
      ]
    },
    {
      "questionText":
          "The period within which the Regional Plan may be approved or rejected as provided by section 15, by the State Government shall be from the date of its receipt by the State Government:",
      "answers": [
        {"text": "Six months", "score": 1},
        {"text": "Twelve months", "score": 0},
        {"text": "Eighteen months", "score": 0},
        {"text": "Twenty-four months", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the minimum setback required for unauthorized structures of height 10 m to 15 m to be considered as compounded structures?",
      "answers": [
        {"text": "1 m", "score": 0},
        {"text": "2 m", "score": 1},
        {"text": "3 m", "score": 0},
        {"text": "4 m", "score": 0}
      ]
    },
    {
      "questionText":
          "What is the minimum setback requirement from roads with width up to 9 m for unauthorized buildings to be considered as compounded structures?",
      "answers": [
        {"text": "1 m", "score": 0},
        {"text": "1.5 m", "score": 1},
        {"text": "2 m", "score": 0},
        {"text": "2.5 m", "score": 0}
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
