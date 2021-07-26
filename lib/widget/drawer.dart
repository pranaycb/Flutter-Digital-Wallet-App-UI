import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/screens/all_service.dart';
import 'package:practise_app/screens/all_transactions.dart';
import 'package:practise_app/screens/main_screen.dart';
import 'package:practise_app/screens/privacy_policy.dart';
import 'package:practise_app/screens/settings_screen.dart';
import 'package:practise_app/screens/sign_in.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height: 50),
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          leading: Icon(Icons.design_services),
          title: Text(
            "All Services",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context)
            =>AllServices()));
          },
        ),
        ListTile(
          leading: Icon(Icons.money),
          title: Text(
            "All Transactions",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context)
            =>AllTransaction()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => SettingsScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => PrivacyScreen()));},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
