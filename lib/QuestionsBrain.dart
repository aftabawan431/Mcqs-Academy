import 'package:mcqs_academy/questions.dart';

class QuestionsBrain{
  List<Question> questions=[

  ];
  int questionNo=0;

  void resetQuestionNo(){
    questionNo=0;
  }
  String getQuestionText(){
    return questions[questionNo].question;
  }
  void nextQuestion(){
    questionNo++;
  }
  List<String> getQuestionOptions(){
    return questions[questionNo].options.split(',');
  }
  String getQuestionAnswer(){
    return questions[questionNo].answer;
  }
  int getTotalQuestion(){
    return questions.length;
  }
  int getCurrentQuestion(){
    return questionNo;
  }
  bool questionsEnded(){
    if(questionNo==questions.length-1){
      return true;
    }else{
      return false;
    }
  }

}

