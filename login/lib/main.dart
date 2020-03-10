import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Icon searchIcon = new Icon(Icons.search, color: Colors.white,);
  Icon sendIcon = new Icon(Icons.send, color: Colors.black,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            icon: searchIcon,
            onPressed: (){},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 30.0,),
            TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
         //icon: sendIcon, 
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
  Widget buildTextField(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
         //icon: sendIcon, 
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
      ),
    );
  }
  Widget buildTextField1(){
    return TextField(
      decoration: InputDecoration(
         //icon: sendIcon,
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
  Widget buildTextField2(){
    return TextField(
      decoration: InputDecoration(
         //icon: sendIcon,
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
  Widget buildTextField3(){
    return TextField(
      decoration: InputDecoration(
         //icon: sendIcon,
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
  Widget buildTextField4(){
    return TextField(
      decoration: InputDecoration(
         //icon: sendIcon,
        hintText: 'Name',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}