import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class ScanQr extends StatelessWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)
        ),
        title: Text("Scan Qr Code"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Image.asset(
              "assets/images/scanner.jpg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
            },
            child: Text(
              "Scan Qr Code",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 18)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
            },
            child: Text(
              "Generate Qr Code",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 18)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)))),
          ),
        ],
      ),
    );
  }
}
