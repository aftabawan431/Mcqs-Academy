import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
const waseem="Waseem";
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

            Center(child: Text('Select Class',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,color: Colors.white,
            ),)),
            SizedBox(height: 30,),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.ac_unit,color: Colors.black,),
                title: Text('8th Class ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black54,),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.ac_unit,color: Colors.black,),
                title: Text('9th Class ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.ac_unit,color: Colors.black,),
                title: Text('10th Class ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      )
    );
  }
}
