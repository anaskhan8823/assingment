import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inventory_management/Screens/history.dart';
import 'package:inventory_management/constants/colors.dart';
import 'package:inventory_management/supportfiles/list.dart';

class StackList extends StatefulWidget {
  const StackList({Key? key}) : super(key: key);

  @override
  _StackListState createState() => _StackListState();
}

Apptheme th = Apptheme();

class _StackListState extends State<StackList> {
  PageController navPageController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadiusDirectional.circular(20))),
                  Positioned(
                    left: 6,
                    top: 80,
                    child: GestureDetector(
                      child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Groceries",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text("Available Items: "),
                                    Text(
                                      "50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => history(
                                      text: 'conf',
                                      items: groceries,
                                    )));
                      },
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 190,
                    child: Container(
                      width: 150,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/groceries.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 3),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadiusDirectional.circular(20))),
                  Positioned(
                    left: 6,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => history(
                                      text: 'conf',
                                      items: confectionaries,
                                    )));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Confectionaries",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text("Available Items: "),
                                    Text(
                                      "60",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            // BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 190,
                    child: Container(
                      width: 150,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/confectionaries.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 3),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadiusDirectional.circular(20))),
                  Positioned(
                    left: 6,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => history(
                                      text: 'conf',
                                      items: confectionaries,
                                    )));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Snacks",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text("Available Items: "),
                                    Text(
                                      "70",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            // BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 190,
                    child: Container(
                      width: 150,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/snacks.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 3),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadiusDirectional.circular(20))),
                  Positioned(
                    left: 6,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => history(
                                      text: 'conf',
                                      items: bavrages,
                                    )));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bevarages",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text("Available Items: "),
                                    Text(
                                      "80",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            // BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 190,
                    child: Container(
                      width: 150,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/beverages.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 3),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadiusDirectional.circular(20))),
                  Positioned(
                    left: 6,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => history(
                                      text: 'conf',
                                      items: cosmetics,
                                    )));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cosmetics",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text("Available Items: "),
                                    Text(
                                      "90",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            // BorderRadius.circular(20),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 190,
                    child: Container(
                      width: 150,
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cosmetics.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
