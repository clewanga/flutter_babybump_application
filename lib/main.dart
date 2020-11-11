import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  String emailaddress = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //column for the outside body that hold everything
      body: Column(
        children: [
            Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/download.jpeg'),
                    Text('Baby Bump'),
                  ],
                ),
              ),

          //column for the login button,email and password input
            Container(
              margin: EdgeInsets.all(10.0) ,
              child: Center(
              child: Column(
                children: <Widget>[
                      //textfieled for the users emailadress
                     SizedBox(height: 15.0,),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          filled: true),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value) {
                          setState(() {
                            emailaddress = value;
                          });
                        },
                      ),
                      //textfield for the users password
                      TextField(
                        decoration:  InputDecoration(
                          labelText: 'Password',
                          filled: true),
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (String value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                      SizedBox(height: 10.0,),
                      RaisedButton(
                        onPressed:() {}, 
                        child: Text('LogIn',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                        color: Theme.of(context).accentColor,),
                  ],
                
              ),
              )
              )
      
    
        ],
      ),
 
    ));
  }
}
