
class Question {
  final String question;
  final String options;
  final String answer;
  final String explanation;


  Question({this.question, this.options, this.answer,this.explanation });
}
class  QuestionModel{
  String id;
  List<Question> questions;
  QuestionModel({this.id,this.questions});
}

class Collection{
  List<QuestionModel> _questionsList=[
    QuestionModel(
        id: '8thScienceChapter 1-3',
        questions:[
          Question(question: 'Alcohol is produced with the help of', options: 'sodium chloride,yeast,nitrogen,carbon dioxide', answer: 'yeast' ,) ,
          Question(question: 'Which of the following drug is an antipyretic?', options: ' Insulin,Alcohol,Streptomycin,Paracetamol', answer: 'Paracetamol'),
          Question(question: 'What helps in the rise of bread or dosa dough?', options: 'Heat, Grinding, Growth of yeast cells,Low pressure',answer: ' Growth of yeast cells'),
        ]
    ),
    QuestionModel(
        id: '8thScienceChapter 4-6',
        questions: [
          Question(question: 'The process by which amount of nitrogen remains the same in the atmosphere is known as', options: 'fermentation,carbon cycle,nitrogen cycle,photosynthesis', answer: 'nitrogen cycle'),
          Question(question: 'Minerals are', options: 'natural resources ,inexhaustible natural resources,exhaustible natural resources,all of these', answer: ' exhaustible natural resources'),
          Question(question: 'Which one is not a coal product?', options: 'Coal tar,Coal gas,Lime', answer: 'Lime'),
        ]
    ),
    QuestionModel(
        id: '8thScienceChapter 7-8',
        questions: [
          Question(question: 'Which cannot fix atmospheric nitrogen in the soil?', options: ' Rhizobium,Clostridium,Azotobacter,Penicillin',answer: 'Penicillin'),
          Question(question: 'The mining of oil under sea is termed as', options: 'distillation,carbonisation,shore mining,destructive distillation', answer: 'shore mining'),
        ]
    ),
    QuestionModel(
        id: '8thScienceChapter 9-10',
        questions: [

          Question(question: 'A smooth shining surface, which rebounds the light back in same or in different direction, is called', options: 'a mirror,a lens,reflection of light,point of incidence', answer: 'a mirror'),
          Question(question: 'Band of seven colours is called', options: 'VIBGYOR,spectrum,dispersion,reflection', answer: 'spectrum'),

        ]
    ),
  QuestionModel(
  id: '8thMathsChapter 1-3',
  questions:[
  Question(
  question: ' An integer can be:',options: 'Only Positive,Only Negative,Both positive and negative,None of the above',answer: ' both positive and Negative'),
  Question(
  question: ' A rational number can be represented in the form of:',options: 'p/q,pq,p+q,p-q',answer: 'p/q,pq'),
  Question(
  question: 'The value of (-10/3) x (-15/2) x (17/19) x 0 is:',options: '0,22.66,20,35',answer: '0'),

  ]
  ),
  QuestionModel(
      id: '8thMathsChapter 4-6',
  questions: [

  Question(
  question: 'Which of the following is not a quadrilateral?',options: 'Square,Rectangle,Triangle,Parallelogram',answer: 'Rectangle'),

  Question(
  question: 'If AB and CD are two parallel sides of a parallelogram, then:',options: 'AB>CD,AB<CD,AB=CD,None of the above',answer: 'AB<CD'),
  ]
      ),
  QuestionModel(
  id: '8thMathsChapter 7-8',
  questions: [
    Question(
        question: 'The usual form of 100 × 7 + 10 × 1 + 8 is:',options: ' 108,708,718,170',answer: '708'),

    Question(
        question: 'If a number is divisible 9, then it is divisible by:',options: '6,7,3,11',answer: '7'),
  ]
  ),
  QuestionModel(
  id: '8thMathsChapter 9-10',
  questions: [

    Question(
        question: 'Each of the angles of a square is:',options: 'Acute angle,Right angle,Obtuse angle,80 degrees',answer: 'Right angle'),

    Question(
        question: 'The quadrilateral whose diagonals are perpendicular to each other is:',options: 'Parallelogram,Rectangle,Trapezium,Rhombus',answer: 'Rhombus'),

    Question(
        question: ' The general form of abc is:',options: '100a + 10b + c,100b + 10c + a,100c + 10a + b,None of the above',answer: '100a + 10b'),
  ]
  ),
    QuestionModel(
      id: '8thEnglishChapter 1-3',
      questions: [
        Question(
            question: ' “I began work on it on Christmas Eve”. In the above sentence ‘it’ stands for', options: 'a junk shop,the garage,the roll-top desk,the drawers',answer: 'the roll-top desk'),
        Question(
            question: ' Sausage is', options: '(a) a wine,slice of meat and bread,a sauce,a British dish',answer: 'slice of meat and bread'),

        Question(
            question: 'What did he want from the ant?', options: 'Mouthful of grain,Shelter from rain,New clothes,Only a and b', answer: '(d) Only a and b'),
      ]
    ),
    QuestionModel(
        id: '8thEnglishChapter 4-6',
        questions: [

          Question(
              question: 'The temptation to buy it was', options: 'a risk,a challenge,the quality,the cheap price', answer: '(d) the cheap price'),
          Question(
              question: 'The man who talked to Bepin Babu at Kalicharan’s was',options: 'an old friend of his,a man from Ranchi,an actor,an enemy', answer: 'an actor'),
        ]
    ),
    QuestionModel(
        id: '8thEnglishChapter 7-8',
        questions: [

          Question(
              question: 'Dinesh Mukerji was',
              options: 'a well-wisher of Bepin Babu,a stranger to him,an accomplice of Chuni Lai,an actor',answer: 'an accomplice of Chuni Lai'),

          Question(
              question: 'What was the policy of the ants?',options: ' Never borrow, never lend,Always give and take,Share and grow,None of the above',answer: 'Never borrow, never lend'),

          Question(
              question: ' Did he wish to repay the ant?',
              options: 'Yes,No,Maybe,Not mentioned in the poem',answer: 'Yes'),
        ]
    ),
    QuestionModel(
        id: '8thEnglishChapter 9-10',
        questions: [

          Question(
              question: ' Who is he talking to when he says “if buds are nip’d…”', options: '(a) His parents,Teacher,Caged bird,All of the Above', answer: 'His parents'),

          Question(
              question: 'What drives all the joy away?',options: 'Caged bird,Nip in the bud,Blown blossoms,School on a summer morning',answer: 'School on a summer morning'),
        ]
    ),
    QuestionModel(
        id: '9thPhysicsChapter 1-3',
        questions:[
          Question(
              question: ' If the string is stretched by two opposite forces of 10 N then tension in the string is',options: 'zero,acid to water,Both positive and negative,None of the above',answer: ' zero'),
          Question(
              question: ' Which of the following is the study of fourth state of matter?',options: 'Plasma physics, predict direction of chemical reaction, 15/4,100nm',answer: 'Plasma physics'),
          Question(
              question: 'If you are not able to understand or do a part of experiment, what should you do? ',options: 'Ask the teacher about it,20,highest',answer: 'Ask the teacher about it'),

        ]
    ),
    QuestionModel(
        id: '9thPhysicsChapter 4-6',
        questions: [

          Question(
              question: 'Which is the most common instrument used in laboratories to measure length? ',options:'catalyst,Rectangle,Meter ruler',answer: 'Meter ruler'),

          Question(
          question: 'Which part of human ear converts sound vibrations into electrical signals',options: 'Cochlea,6.8,None of the above',answer: 'Cochlea'),
          ]
    ),
    QuestionModel(
        id: '9thPhysicsChapter 7-8',
        questions: [
          Question(
              question: 'What do dolphins, bats and porpoise use',options: 'Ultrasound ,708,55,170',answer: 'Ultrasound '),

          Question(
              question: 'Antibiotics are',options: 'protein in nature,Mass combination,First quadrant',answer: ' protein in nature'),
        ]
    ),
    QuestionModel(
        id: '9thPhysicsChapter 9-10',
        questions: [

          Question(
              question: 'Children under the age of 5 can hear upto',options: '25k Hz,Right angle,Obtuse angle,80 degrees',answer: '25k Hz'),

          Question(
              question: 'The nuclei of cells consists of',options: 'nucleic acids,Rectangle,Trapezium,Rhombus',answer: 'nucleic acids'),

          Question(
              question: ' One unit of electrical energy is equal to',options: '3.6 � 106J,8,100c + 10a + b,None of the above',answer: '3.6 � 106J'),
        ]
    ),

    QuestionModel(
        id: '10thPhysicsChapter 1-3',
        questions:[
          Question(
              question: ' What is the rate of flow of electric charges called?',options: 'zero,acid to water,Electric current,None of the above',answer: ' Electric current'),
          Question(
              question: ' Which of the following is the study of fourth state of matter?',options: 'Plasma physics, predict direction of chemical reaction, 15/4,100nm',answer: 'Plasma physics'),
          Question(
              question: 'The least distance of distinct vision for a young adult with normal vision is',options: '25 cm,20,highest',answer: '25 cm'),

        ]
    ),
    QuestionModel(
        id: '10thPhysicsChapter 4-6',
        questions: [

          Question(
              question: 'The part of the eyes refracts light entering the eye from external objects?',options:'catalyst,Rectangle,Cornea',answer: 'Cornea'),

          Question(
          question: 'Which part of human ear converts sound vibrations into electrical signals',options: 'Cochlea,6.8,None of the above',answer: 'Cochlea'),
        ]
    ),
    QuestionModel(
        id: '10thPhysicsChapter 7-8',
        questions: [
          Question(
              question: 'What should be the core of an electromagnet?',options: 'Ultrasound ,708,soft iron,170',answer: 'soft iron '),

          Question(
              question: 'Which device produces the electric current?',options: 'protein in nature,Mass combination,generator',answer: ' generator'),
        ]
    ),
    QuestionModel(
        id: '10thPhysicsChapter 9-10',
        questions: [

          Question(
              question: 'A body of mass 1kg is attracted by the earth with a force which is equal to',options: '25k Hz,Right angle,Obtuse angle,9.8N',answer: '9.8N'),

          Question(
              question: 'Which is the most popular kitchen fuel in India?',options: 'nucleic acids,Coal,Trapezium,Rhombus',answer: 'Coal'),

          Question(
              question: ' Which of the following is a component of bio-gas?',options: '3.6 � 106J,8,Methane ,None of the above',answer: 'Methane '),
        ]
    ),

  QuestionModel(
  id: '10thChemistryChapter 1-3',
  questions:[
  Question(
  question: ' When diluting acid always add',options: '1775,acid to water,Both positive and negative,None of the above',answer: ' acid to water'),
  Question(
  question: ' Equilibrium constant can be used to',options: '10nm, predict direction of chemical reaction, 15/4,100nm',answer: 'predict direction of chemical reaction'),
  Question(
  question: 'Due to high concentration of reactants, the rate of forward reaction is ',options: '0,22.66,20,highest',answer: 'highest'),

  ]
  ),
  QuestionModel(
  id: '10thChemistryChapter 4-6',
  questions: [
  Question(question: 'A substance which increases the rate of reaction is called ',options:'catalyst,Rectangle,Al razi',answer: 'catalyst'),
  Question(question: 'how many state of matter',options: '3,6.8,None of the above',answer: '3'),
  ]
  ),
  QuestionModel(
  id: '10thChemistryChapter 7-8',
  questions: [
  Question(
  question: 'How many branches in chemistry',options: '8,708,55,170',answer: '8'),

  Question(
  question: 'Antibiotics are',options: 'protein in nature,Mass combination,First quadrant',answer: ' protein in nature'),
  ]
  ),
  QuestionModel(
  id: '10thChemistryChapter 9-10',
  questions: [
  Question(
  question: 'How to create water for chemistry ',options:'H2O,Right angle,Obtuse angle,80 degrees',answer: 'H2 0'),
  Question(
  question: 'The nuclei of cells consists of',options: 'nucleic acids,Rectangle,Trapezium,Rhombus',answer: 'nucleic acids'),

  Question(
  question: ' By the help of fermentation, starch is converted to ',options:'rectified spirit,8,100c + 10a + b,None of the above',answer: 'rectified spirit'),
  ]
  )
  ];

  List<Question> getList(String id){
    print("es $id");
    final newList=_questionsList.firstWhere((el)=>el.id==id).questions;

    return newList;
  }
}
