import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:practise_app/widget/allServices.dart';

class AllServices extends StatelessWidget {
  const AllServices({Key? key}) : super(key: key);

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
        title: Text("All Services"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
            AllAppServices(
              onTap: () {},
              icon: "assets/images/recharge.png",
              title: "Mobile Recharge",
              subTitle: "Recharge mobile at anytime",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/dish.png",
              title: "DTH Bill Payment",
              subTitle: "Pay DTH Bill at anytime",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/power-plant.png",
              title: "Mobile Recharge",
              subTitle: "Pay Electricity Bill in online",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/5-stars.png",
              title: "Hotel Bokking",
              subTitle: "Book hotel in online",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/bus-ticket.png",
              title: "Bus Ticket",
              subTitle: "Buy Bus ticket",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/donation.png",
              title: "Donation",
              subTitle: "Donate in anytime and anywhere",
            ),
            AllAppServices(
              onTap: () {},
              icon: "assets/images/salary.png",
              title: "Other's Bill Payment",
              subTitle: "Pay bills in online",
            ),
          ],
      ),
    );
  }
}
