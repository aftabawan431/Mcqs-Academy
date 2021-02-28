import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String title;
  final Function onTap;
Card1({@required this.title,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        onTap:onTap,
        leading: Icon(Icons.ac_unit,color: Colors.black,),
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black54,),
      ),
    );
  }
}
class Card2 extends StatelessWidget {
  final String title;
  Card2({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),);
  }
}
