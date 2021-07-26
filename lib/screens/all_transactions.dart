import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:practise_app/widget/allTransactions.dart';

class AllTransaction extends StatelessWidget {
  const AllTransaction({Key? key}) : super(key: key);

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
        title: Text("All Transactions"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        physics: BouncingScrollPhysics(),
        children: [
          AllTransactions(),
        ],
      ),
    );
  }
}