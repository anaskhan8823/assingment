import 'package:flutter/material.dart';
import 'package:inventory_management/Screens/login.dart';
import 'package:inventory_management/Screens/stack.dart';
import 'package:inventory_management/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Apptheme th = Apptheme();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          color: th.kbluish,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage("assets/login.png"),
                    width: 240,
                    height: 220,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFFF9A826),
                      ),
                      width: 350,
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextField(
                              cursorColor: th.kbluish,
                              decoration: new InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                hintText: 'User Name',
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                  color: th.kbluish,
                                ),
                              ),
                            ),
                            TextField(
                              cursorColor: th.kbluish,
                              obscureText: false,
                              decoration: new InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                hintText: 'Email Address',
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: th.kbluish,
                                ),
                              ),
                            ),
                            TextField(
                              cursorColor: th.kbluish,
                              obscureText: _showPassword,
                              decoration: new InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide:
                                        new BorderSide(color: Colors.white)),
                                hintText: 'Enter Your Password',
                                prefixIcon: Icon(
                                  Icons.vpn_key_rounded,
                                  color: th.kbluish,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Icon(
                                    _showPassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: th.kbluish,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF3f3d56),
                                    borderRadius: BorderRadius.circular(10)),
                                child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StackList()));
                                      });
                                    },
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: th.kwhite,
                                          fontWeight: FontWeight.bold),
                                    ))),
                            Row(children: <Widget>[
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: th.kbluish,
                                ),
                              ),
                              const Text("  or  "),
                              Expanded(
                                  child: Divider(
                                thickness: 1,
                                color: th.kbluish,
                              )),
                            ]),
                            Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFDDA7)
                                        .withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xFFFFDDA7))),
                                child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => login()),
                                        );
                                      });
                                    },
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: const Color(0xFF3f3d56),
                                          fontWeight: FontWeight.bold),
                                    ))),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
