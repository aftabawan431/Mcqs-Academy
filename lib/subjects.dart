import 'package:flutter/material.dart';
import 'package:mcqs_academy/QuizScreen.dart';
import 'package:mcqs_academy/Widgets/Card.dart';
import 'package:mcqs_academy/questions.dart';
import 'constands.dart';
import 'package:mcqs_academy/data' as file;

class Subjects extends StatefulWidget {
  final String id;
  Subjects({this.id});

  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  List<String> subjects = [];
  @override
  void initState() {
    // TODO: implement initState
    file.QuizBrain quizBrain = file.QuizBrain();
    subjects = quizBrain.getList(widget.id);
    print(subjects);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(widget.id),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select Subjects", style: kMainHeading),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: ListView.builder(
                    itemCount: subjects.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Card1(
                            title: subjects[index],
                            onTap: () {

                              if (widget.id.length >= 6) {
                                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>QuizScreen(id: "${widget.id}${subjects[index]}",)));
                             List<Question> question;
                               print("${widget.id}${subjects[index]}");
                              } else {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Subjects(
                                          id: "${widget.id}${subjects[index]}");
                                    },
                                  ),
                                );
                              }

                            },
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
