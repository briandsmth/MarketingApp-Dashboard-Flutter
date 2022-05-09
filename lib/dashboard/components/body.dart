import 'package:dashboard_2/config/responsive.dart';
import 'package:dashboard_2/config/size.dart';
import 'package:dashboard_2/constants.dart';
import 'package:dashboard_2/dashboard/components/appbaritems.dart';
import 'package:dashboard_2/dashboard/components/header.dart';
import 'package:dashboard_2/dashboard/components/infocard.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      key: _drawerkey,
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: primarycolor,
              leading: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage("assets/images/me.JPG"),
                  )),
              actions: [Appbaritems()],
            )
          : const PreferredSize(child: SizedBox(), preferredSize: Size.zero),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SafeArea(
                  child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      InfoCard(
                          icon: 'assets/images/video.png',
                          label: 'Video',
                          label2: 'Creation'),
                      InfoCard(
                          icon: 'assets/images/content.png',
                          label: 'Content',
                          label2: 'Marketing'),
                      InfoCard(
                        icon: 'assets/images/trend.png',
                        label: 'Analytics',
                        label2: 'Software',
                      ),
                      InfoCard(
                        icon: 'assets/images/ad.png',
                        label: 'Social Media',
                        label2: 'Advertising',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                Container(
                  constraints: BoxConstraints(
                      minWidth: Responsive.isDesktop(context)
                          ? 200
                          : SizeConfig.screenWidth / 2 - 40),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.cyan, Colors.cyanAccent]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Premium",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/premium.png",
                                height: 20,
                                width: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Unlock the full potential ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "with premium",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.amber[100],
                                    onPrimary: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text(
                                  "Unlock",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )))
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.zoom_out_map,
                color: Colors.white,
              ),
              label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_rounded,
                color: Colors.white,
              ),
              label: 'Analytics'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: primarycolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
