import 'package:flutter/material.dart';
import 'package:your_app_name/Activities/chapters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questions2(),
    );
  }
}

class questions2 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<questions2> {
  final List<Map<String, Object>> _questions = [
    {
      "questionText":
          "What is the short title of The Maharashtra Development Plan Rules?",
      "answers": [
        {"text": "The Maharashtra Development Plan Rules, 1966", "score": 1},
        {"text": "The Maharashtra Development Plan Rules, 1967", "score": 0},
        {"text": "The Maharashtra Development Plan Rules, 1970", "score": 0},
        {"text": "The Maharashtra Development Plan Rules, 1992", "score": 0}
      ]
    },
    {
      "questionText":
          "The notice of declaration of intention to prepare a Development Plan shall be given by means of an advertisement in _______",
      "answers": [
        {"text": "English only", "score": 0},
        {"text": "Regional Language only", "score": 0},
        {"text": "Hindi only", "score": 0},
        {"text": "English & Regional Language Both", "score": 1}
      ]
    },
    {
      "questionText":
          "According to DP rules, the Planning Authority shall consider suggestions or objections made by the public in respect of the proposed DP within the period specified in the notice, such period being _______ from the date of publication of said notice in OG.",
      "answers": [
        {"text": "Less than 30 days", "score": 0},
        {"text": "Less than 60 days", "score": 0},
        {"text": "Not less than 30 days", "score": 0},
        {"text": "Not less than 60 days", "score": 1}
      ]
    },
    {
      "questionText":
          "The draft Development Plan shall be prepared on the scale_____",
      "answers": [
        {"text": "Smaller than 1:1000", "score": 0},
        {"text": "Not smaller than 1:1000", "score": 1},
        {"text": "Smaller than 1:10000", "score": 0},
        {"text": "Not smaller than 1:10000", "score": 0}
      ]
    },
    {
      "questionText":
          "After preparation and publication of draft development plan in Official Gazette, the suggestions & objections are invited_____ from the date of said notice in OG for population more than 10 lakhs.",
      "answers": [
        {"text": "Within 30 days", "score": 0},
        {"text": "After 30 days", "score": 0},
        {"text": "Within 60 days", "score": 1},
        {"text": "After 60 days", "score": 0}
      ]
    },
    {
      "questionText":
          "How many copies of Draft Development Plan, Planning Authority shall submit to State Government through DTP, after modifications and changes carried out?",
      "answers": [
        {"text": "One", "score": 0},
        {"text": "Two", "score": 0},
        {"text": "Three", "score": 1},
        {"text": "Four", "score": 0}
      ]
    },
    {
      "questionText":
          "Ever modification or change made in the draft DP so submitted shall be signed by_______ & countersigned by_______ of a municipal council.",
      "answers": [
        {"text": "Town Planning Officer, Chief Officer", "score": 1},
        {"text": "Town Planning Officer, Chief Executive Officer", "score": 0},
        {"text": "Director Of Town Planning, Chief Officer", "score": 0},
        {
          "text": "Director Of Town Planning, Chief Executive Officer",
          "score": 0
        }
      ]
    },
    {
      "questionText": "Town Planning Officer may have qualifications:",
      "answers": [
        {"text": "1 or 2 only", "score": 1},
        {"text": "2 or 3 only", "score": 0},
        {"text": "1 or 3 only", "score": 0},
        {"text": "1 or 2 or 3 any", "score": 0}
      ]
    },
    {
      "questionText":
          "The area proposed to be developed contains a site plan having scale of _____",
      "answers": [
        {"text": "Not less than 1:500", "score": 1},
        {"text": "Not less than 1:600", "score": 0},
        {"text": "Not less than 1:1000", "score": 0},
        {"text": "Not less than 1:1500", "score": 0}
      ]
    },
    {
      "questionText":
          "How many sets of site plan are submitted to take permission for area of proposed development?",
      "answers": [
        {"text": "One", "score": 0},
        {"text": "Two", "score": 0},
        {"text": "Three", "score": 1},
        {"text": "Four", "score": 0}
      ]
    },
    {
      "questionText":
          "A detailed plan showing the plan, section, elevation of the proposed development work should be drawn to a scale of not less than______",
      "answers": [
        {"text": "1:100", "score": 1},
        {"text": "1:500", "score": 0},
        {"text": "1:1000", "score": 0},
        {"text": "1:1500", "score": 0}
      ]
    },
    {
      "questionText":
          "In case of a layout of the land or plot showing surrounding land and existing access to the land included in the layout a site plan shall be drawn to the scale of not smaller than_____",
      "answers": [
        {"text": "1:100", "score": 0},
        {"text": "1:500", "score": 1},
        {"text": "1:1000", "score": 0},
        {"text": "1:15000", "score": 0}
      ]
    },
    {
      "questionText":
          "The plans of sub-divisions of the land and width of the proposed streets and dimensions and area of open spaces provided in the layout for the purpose of garden or recreation are drawn to the scale of not less than_____",
      "answers": [
        {"text": "1:500", "score": 1},
        {"text": "1:600", "score": 0},
        {"text": "1:1000", "score": 0},
        {"text": "1:1500", "score": 0}
      ]
    },
    {
      "questionText":
          "The validity period of Commencement Certificate if it is not renewed will be ______ from the date of its receipt by party concerned.",
      "answers": [
        {"text": "One year", "score": 0},
        {"text": "Two years", "score": 0},
        {"text": "Three years", "score": 1},
        {"text": "Four years", "score": 0}
      ]
    },
    {
      "questionText":
          "Within how many days the claim for compensation under sub-section 2 of section 51 shall be made to Planning Authority from the date service of the order of revocation or modification?",
      "answers": [
        {"text": "30 days", "score": 0},
        {"text": "45 days", "score": 0},
        {"text": "60 days", "score": 1},
        {"text": "90 days", "score": 0}
      ]
    },
    {
      "questionText":
          "Who will prepare detailed of expenditure incurred in carrying out development according to permission granted and details of estimate of such expenditure as has been rendered abortive because of the order of modification of permission originally granted?",
      "answers": [
        {"text": "Licensed Engineering", "score": 0},
        {"text": "Licensed Architecture", "score": 0},
        {"text": "Licensed Surveyor", "score": 1},
        {"text": "Any Town Planning Officer", "score": 0}
      ]
    },
    {
      "questionText":
          "The notice of refusal to accept compensation offered by the Planning Authority shall be given by the owner ______ from the date of receipt of the offer.",
      "answers": [
        {"text": "Within 30 days", "score": 0},
        {"text": "Within 45 days", "score": 0},
        {"text": "Within 60 days", "score": 1},
        {"text": "Within 90 days", "score": 0}
      ]
    },
    {
      "questionText":
          "Appeal against notice by PA requiring removal of authorised development or use shall be accompanied in duplicate by:",
      "answers": [
        {"text": "True copies of the commencement certificate", "score": 1},
        {"text": "Plans as approved by the PA", "score": 1},
        {"text": "A copy of the notice served by the PA", "score": 1}
      ]
    },
    {
      "questionText":
          "Compensation for damage or expenses incurred due to removal of authorised development or use may be made to the PA within _____ after the expiry of the period specified for complying with the notice served on him under sub-section (1) of section 56.",
      "answers": [
        {"text": "30 days", "score": 0},
        {"text": "45 days", "score": 0},
        {"text": "60 days", "score": 1},
        {"text": "90 days", "score": 0}
      ]
    },
    {
      "questionText":
          "After the disposal of the appeal filed under sub-section 2 of section 56, any person can served purchase notice to State Government within period of ______",
      "answers": [
        {"text": "30 days", "score": 0},
        {"text": "45 days", "score": 0},
        {"text": "60 days", "score": 1},
        {"text": "90 days", "score": 0}
      ]
    },
    {
      "questionText":
          "All documents, plans and maps relating to any final Development Plan shall be kept open for public inspection at the head office of the Planning authority for a period of _______ from the coming into operation of the final Development Plan",
      "answers": [
        {"text": "One year", "score": 0},
        {"text": "Two years", "score": 0},
        {"text": "Three years", "score": 0},
        {"text": "Twenty years", "score": 1}
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
