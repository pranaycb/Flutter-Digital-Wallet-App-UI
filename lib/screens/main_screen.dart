import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/screens/all_transactions.dart';
import 'package:practise_app/screens/inbox.dart';
import 'package:practise_app/screens/scan_qr.dart';
import 'package:practise_app/widget/drawer.dart';
import 'package:practise_app/widget/recentTransaction.dart';
import 'package:practise_app/widget/singleService.dart';
import 'all_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _drawerKey = GlobalKey<ScaffoldState>();


  void _onItemTapped(int index) {
    setState(() {
      if(index == 1){
          Navigator.push(context, CupertinoPageRoute(builder: (context)
          =>ScanQr()));
      }else if(index == 2){
        Navigator.push(context, CupertinoPageRoute(builder: (context)
        =>Inbox()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 35,
            )),
        title: SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child: Image.asset("assets/images/logo.png")),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                padding: EdgeInsets.all(5),
                height: kToolbarHeight * 0.9,
                width: kToolbarHeight * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: Colors.orange,
                        style: BorderStyle.solid),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/user.png"),
                      fit: BoxFit.contain,
                    )),
              ))
        ],
        //Styling
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png", width: 28),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/qr-code.png", width: 28),
              label: "Scan QR",
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/inbox.png", width: 28),
              label: "My Inbox"),
        ],
        currentIndex: 0,
        onTap: _onItemTapped,
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Services",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)
                =>AllServices()));
              },
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleServices(
                textTitle: "Mobile Recharge",
                svgSrc: "assets/images/recharge.png",
              ),
              SingleServices(
                textTitle: "DTH",
                svgSrc: "assets/images/dish.png",
              ),
              SingleServices(
                textTitle: "Electricity",
                svgSrc: "assets/images/power-plant.png",
              ),
              SingleServices(
                textTitle: "Hotel",
                svgSrc: "assets/images/5-stars.png",
              ),
              SingleServices(
                textTitle: "Bus",
                svgSrc: "assets/images/bus-ticket.png",
              ),
            ],
          ),
        ),
        //For additional padding
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recent Transaction",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)
                =>AllTransaction()));
              },
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        //Show Recent Transaction
        RecentTransaction(),
      ],
    );
  }
}