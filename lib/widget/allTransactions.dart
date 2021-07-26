import "package:flutter/material.dart";
import 'package:practise_app/model/all_transaction.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: transaction.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0.5, 0)),
                ]),
            child: ListTile(
              leading: Image.asset(transaction[index].svgSrc),
              title: Text(
                transaction[index].tranType,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(transaction[index].tranDate),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transaction[index].tranAmount,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    transaction[index].tranStatus,
                    style: TextStyle(
                        color: transaction[index].tranStatus == "Success"
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          );
        });
  }
}
