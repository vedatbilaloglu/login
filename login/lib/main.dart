import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            SizedBox(height: 45.0,),
            buildTextField(),
            SizedBox(height: 15.0,),
            buildTextField1(),
            SizedBox(height: 15.0,),
            buildTextField2(),
            SizedBox(height: 15.0,),
            buildTextField3(),
            SizedBox(height: 15.0,),
            buildTextField4(),
            SizedBox(height: 25.0,),
            _buildRememberMeCheckbox(),
            SizedBox(height: 15.0,),
            _buildRegisterBtn(),
            SizedBox(height: 15.0,),
            _buildLoginBtn(),
            SizedBox(height: 15.0,),
            _buildSocialBtnRow(),
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
        suffixIcon: Icon(
          Icons.supervised_user_circle,
          color: Colors.redAccent,
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
        hintText: 'Surname',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        suffixIcon: Icon(
          Icons.person,
          color: Colors.redAccent,
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
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        suffixIcon: Icon(
          Icons.email,
          color: Colors.redAccent,
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
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        suffixIcon: Icon(
          Icons.lock,
          color: Colors.redAccent,
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
        hintText: 'Confirm Password',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        suffixIcon: Icon(
          Icons.lock,
          color: Colors.redAccent,
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: true,
              checkColor: Colors.redAccent,
              activeColor: Colors.white,
              onChanged: (value){
                value = false;
              },
            ),
          ),
          Text(
            'I agree terms & conditions and privacy policy',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.redAccent,
        child: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.redAccent,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

   Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/google.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Instagram'),
            AssetImage(
              'assets/instagram.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Twitter'),
            AssetImage(
              'assets/twitter.jpg',
            ),
          ),
        ],
      ),
    );
  }