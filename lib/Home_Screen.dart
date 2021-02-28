import 'package:flutter/material.dart';
import 'package:mcqs_academy/Widgets/Card.dart';
import 'package:mcqs_academy/constands.dart';
import 'package:mcqs_academy/subjects.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Select class",style: kMainHeading,),
            SizedBox(height: 30,),
            Card1(title: '8th Class',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Subjects(id:"8th");
              },
              ),
              );
            },),
            SizedBox(height: 10,),
            Card1(title: '9th Class',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Subjects(id:"9th");
              },
              ),
              );
            },),
            SizedBox(height: 10,),
            Card1(title: '10th Class',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Subjects(id:"10th");
              },
              ),
              );
            },),

          ],
        ),
      )
    );
  }
}


