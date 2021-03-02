import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcqs_academy/Home_Screen.dart';
import 'package:mcqs_academy/QuestionsBrain.dart';
import 'package:mcqs_academy/questions.dart';
import 'package:mcqs_academy/Widgets/customAlertDialoge.dart';
import 'package:mcqs_academy/subjects.dart';

class QuizScreen extends StatefulWidget {
  bool ressetter;
  var result;
  final Function resetResetter;
String reverseId;
  String id;
  QuizScreen({this.id, this.resetResetter, this.result,this.reverseId});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool result;
  int selectedOption;
  bool option1;
  bool option2;
  bool option3;
  bool option4;
  bool disabler = false;
  bool _quizEnded = false;

  QuestionsBrain questionsBrain = QuestionsBrain();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Collection collection = Collection();

    var data = collection.getList(widget.id);

    questionsBrain.questions = collection.getList(widget.id);
    print(questionsBrain.questions);
  }

  void checkAnswer(String answer) {
    if (disabler == false) {
      if (questionsBrain.getQuestionAnswer() == answer) {
        print("true");
        setState(() {
          disabler = true;
          result = true;
        });
        Timer(Duration(seconds: 3), () {
          resetAll();
          setState(() {
            if (questionsBrain.getCurrentQuestion() ==
                questionsBrain.getTotalQuestion() - 1) {
              print("Quiz ended");
              showAlertDialog(context);
            } else {
              questionsBrain.nextQuestion();
            }
          });
        });
      } else {
        disabler = true;
        result = false;
        print("false");
        Timer(Duration(seconds: 2), () {
          resetAll();
          setState(() {
            if (questionsBrain.getCurrentQuestion() ==
                questionsBrain.getTotalQuestion() - 1) {
              showAlertDialog(context);
              print("QUiz ended");
            } else {
              questionsBrain.nextQuestion();
            }
          });
        });
      }
    }
  }

  void resetAll() {
    setState(() {
      selectedOption = null;
      result = null;
      disabler = false;
    });
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController _emailControllerField = TextEditingController();
          return CustomAlertDialog(
            content: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 4.0,
                color: Colors.white,
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/smile.png'),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: Text(
                      'Quiz Ended',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      child: Text('Start Again'),
                     onPressed: (){
                     Navigator.popAndPushNamed(context,'/a');

                     },
                      color: Colors.green,
                    )
                  ],
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Text(
            'Quiz Screen',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Container(
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 20),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 25, right: 25),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Text(
                                  "Question ${questionsBrain.getCurrentQuestion() + 1} of ${questionsBrain.getTotalQuestion()}"),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    questionsBrain.getQuestionText(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        result == true || result == false
                            ? Container(
                                child: CircleAvatar(
                                radius: 80,
                                child: Image.asset(result
                                    ? 'assets/happy.png'
                                    : "assets/sad.png"),
                              ))
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white.withOpacity(.8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            // height: 80,
                            // color: Colors.white,

                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.people_alt_rounded,
                                              color: Colors.black,
                                            ),
                                            Center(
                                              child: Text(
                                                'Ask Friend',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        if (disabler == false) {
                                          resetAll();
                                          setState(() {
                                            if (questionsBrain
                                                    .getCurrentQuestion() ==
                                                questionsBrain
                                                        .getTotalQuestion() -
                                                    1) {
                                              showAlertDialog(context);
                                            } else {
                                              questionsBrain.nextQuestion();
                                            }
                                          });
                                        }
                                      },
                                      child: Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Skip',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Icon(Icons
                                                  .arrow_forward_ios_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    setState(() {
                                      selectedOption = 0;
                                    });
                                    checkAnswer(
                                        questionsBrain.getQuestionOptions()[0]);
                                  },
                                  tileColor: result == true &&
                                          selectedOption == 0
                                      ? Colors.green
                                      : result == false && selectedOption == 0
                                          ? Colors.red
                                          : Colors.transparent,
                                  title: Center(
                                      child: Text(
                                    questionsBrain.getQuestionOptions()[0],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    if (disabler == false) {
                                      setState(() {
                                        selectedOption = 1;
                                      });
                                      checkAnswer(questionsBrain
                                          .getQuestionOptions()[1]);
                                    }
                                  },
                                  tileColor: result == true &&
                                          selectedOption == 1
                                      ? Colors.green
                                      : result == false && selectedOption == 1
                                          ? Colors.red
                                          : Colors.transparent,
                                  title: Center(
                                      child: Text(
                                    questionsBrain.getQuestionOptions()[1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    if (disabler == false) {
                                      setState(() {
                                        selectedOption = 2;
                                      });
                                      checkAnswer(questionsBrain
                                          .getQuestionOptions()[2]);
                                    }
                                  },
                                  tileColor: result == true &&
                                          selectedOption == 2
                                      ? Colors.green
                                      : result == false && selectedOption == 2
                                          ? Colors.red
                                          : Colors.transparent,
                                  title: Center(
                                      child: Text(
                                    questionsBrain.getQuestionOptions()[2],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    if (disabler == false) {
                                      setState(() {
                                        selectedOption = 3;
                                      });

                                      checkAnswer(questionsBrain
                                          .getQuestionOptions()[3]);
                                    }
                                  },
                                  tileColor: result == true &&
                                          selectedOption == 3
                                      ? Colors.green
                                      : result == false && selectedOption == 3
                                          ? Colors.red
                                          : Colors.transparent,
                                  title: Center(
                                      child: Text(
                                    questionsBrain.getQuestionOptions()[3],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )))),
                        ],
                      ),
                    )),
                // if( ${qu})
              ],
            )),
      ),
    );
  }
}

// "Question ${questionsBrain.getCurrentQuestion() + 1} of ${questionsBrain.getTotalQuestion()}"),