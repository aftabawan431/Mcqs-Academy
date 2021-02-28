import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcqs_academy/QuestionsBrain.dart';
import 'package:mcqs_academy/questions.dart';

class QuizScreen extends StatefulWidget {
  bool ressetter;
  var result;
  final Function resetResetter;

  String id;
  QuizScreen({this.id, this.resetResetter,this.result});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var selectedItem;
  bool option1;
  bool option2;
  bool option3;
  bool option4;
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
  void resetAll() {
    if (widget.ressetter == true) {
      option1 = option2 = option3 = option4 = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (selectedItem == 0 && widget.result != null) {
      option1 = widget.result;
    }
    if (selectedItem == 1 && widget.result != null) {
      option2 = widget.result;
    }
    if (selectedItem == 2 && widget.result != null) {
      option3 = widget.result;
    }
    if (selectedItem == 3 && widget.result != null) {
      option4 = widget.result;
    }

    if (widget.ressetter == true) {
      resetAll();
      widget.resetResetter();
    }
    
    return SafeArea(
        child: Scaffold(
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
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),

                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                      questionsBrain.getQuestionText(),
                      style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontStyle: FontStyle.italic),
                    ),
                        )),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                    });
                                  },
                                  child: Container(
                                    color: Colors.redAccent,

                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.people_alt_rounded,
                                          color: Colors.black,
                                        ),
                                        Center(
                                          child: Text('Ask Friend', style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 20),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                questionsBrain.nextQuestion();
                                    });
                                  },
                                  child: Container(
                                    color: Colors.yellowAccent,
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text('Next', style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 20),),
                                          Icon(Icons.arrow_forward_ios_rounded)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {

                            });
                          },
                          child: Card(
                              child: ListTile(
                                  title: Center(
                                      child: Text(
                            questionsBrain.getQuestionOptions()[0],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )))),
                        ),
                        Card(
                            child: ListTile(
                                title: Center(
                                    child: Text(
                          questionsBrain.getQuestionOptions()[1],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )))),
                        Card(
                            child: ListTile(
                                title: Center(
                                    child: Text(
                          questionsBrain.getQuestionOptions()[2],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )))),
                        Card(
                            child: ListTile(
                                title: Center(
                                    child: Text(
                          questionsBrain.getQuestionOptions()[3],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )))),
                      ],
                    ),
                  ))
              ],
          )),
    ));
  }
}
