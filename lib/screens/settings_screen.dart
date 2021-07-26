import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/widget/InputField.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
        title: Text("Settings"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                  radius: 50,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: (){
                          //Pick files
                        },
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                        ),
                      )
                    ),
                  ),
                )
              ],
            )
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.person),
            hintText: "Enter Your Name",
            labelText: "Your Name",
            initialValue: "Pranay Chakraborty",
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.phone),
            hintText: "Enter Your Mobile Number",
            labelText: "Your Mobile",
            initialValue: "01878******",
          ),
          SizedBox(height: 40),
          InputField(
            prefixIcon: Icon(CupertinoIcons.envelope),
            hintText: "Enter Your Email",
            labelText: "Your Email",
            initialValue: "pc8845370@gmail.com",
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: (){}, 
            child: Text(
                "Save Changes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.w700
                ),
              ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              )
            ),
          )
        ],
      ),
    );
  }
}
