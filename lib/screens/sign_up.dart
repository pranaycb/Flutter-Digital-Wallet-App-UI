import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/widget/InputField.dart';

import 'main_screen.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        title: Text("Signup"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "MYWALLET\n",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Find all services in one place",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ])),
          SizedBox(height: 50),
          InputField(
            prefixIcon: Icon(CupertinoIcons.person),
            hintText: "Enter Your Name",
            labelText: "Your Name",
            initialValue: null,
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.phone),
            hintText: "Enter Your Mobile",
            labelText: "Your Mobile",
            initialValue: null,
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.lock),
            hintText: "Enter a Password",
            labelText: "Your Password",
            initialValue: null,
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.lock),
            hintText: "Confirm your Password",
            labelText: "Confirm Password",
            initialValue: null,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
            },
            child: Text(
              "Create Account",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 18)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)))),
          ),
          SizedBox(height: 25),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Signin here",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600
                        ),
                      )
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
