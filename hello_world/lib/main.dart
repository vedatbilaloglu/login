import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

Icon actionIcon = new Icon(Icons.search);

void main(){
  runApp(new MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        leading: BackButton(
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: (){
              
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [          
        Text('Welcome',style: TextStyle(fontSize: 25.0),),
          ],
        ),
        Row(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            Text('PREP:'),
            Text('25 min'),
            SizedBox(height: 50.0,),
          ],
        ),
        Row(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            Text('COOK:'),
            Text('1 hr'),
            SizedBox(height: 50.0,),
          ],
        ),
        Row(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            Text('FEEDS:'),
            Text('4-6'),
            SizedBox(height: 50.0,),
          ],
        ),
          ],
          
        ),
      ),
    ),
  ));
}





