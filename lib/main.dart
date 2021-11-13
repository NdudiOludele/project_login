import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home:Login(),
  ),
  );
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(child:
      Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top:20.0),
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage("https://bit.ly/3qx6tGH"),
              ),
            ),
          ),
          const SizedBox(height: 35.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text("Username or Email",
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Card(
                  elevation: 3.0,
                  child: ListTile(),
                ),
              )
            ],
          ),
          const SizedBox(height: 30.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text("Password",
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Card(
                  elevation: 3.0,
                  child: ListTile(
                    trailing: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: TextField(
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText: "Forgot Password?",
                    hintStyle: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35.0,0.0,210.0,0.0),
                  child: Divider(
                    color: Colors.teal,
                    thickness: 1.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 35.0),
                child: ListTile(
                  title: Text("Log In",style:
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),textAlign: TextAlign.center,),
                ),
                color: Colors.teal,
              ),
               Center(
                 child: Text.rich(TextSpan(
                     text:"Don't have an account? ",
                     style: TextStyle(
                       fontSize: 18.0
                     ),
                 children:[
                   TextSpan(text: " Sign Up",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                     fontWeight: FontWeight.bold
                   ))
                 ] ),
                   textAlign: TextAlign.center,
                 ),
               ),
              SizedBox(height: 40.0),
              Center(
                child: Text("or Continue with",
                  style:TextStyle(
                    fontSize: 18.0,
                      color:Colors.white,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage:NetworkImage("https://bit.ly/3HdwFMt")
                ),
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage("https://bit.ly/3nbKiDO")),
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage("https://bit.ly/3Fjbcjv"))

              ]
            ),
          )
        ],

      ),
      ),
    );
  }
}
