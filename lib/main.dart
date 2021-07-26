import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise_app/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Practice",
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
        appBarTheme: AppBarTheme(
          toolbarTextStyle: TextStyle(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.orange),
          centerTitle: true,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
  }
}