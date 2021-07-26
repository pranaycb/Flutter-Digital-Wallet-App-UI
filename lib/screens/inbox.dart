import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

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
        title: Text("My Inbox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                "assets/images/inbox.png",
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "You inbox is currently impty",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ),
    );
  }
}
