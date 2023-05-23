import 'package:flutter/material.dart';
import 'package:tnp/screens/login/adminLogin.dart';
import 'package:tnp/screens/login/login.dart';
import 'package:tnp/screens/login/registration.dart';
import 'package:tnp/widgets/themes.dart';

class UserAdmin_Page extends StatefulWidget {
  const UserAdmin_Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<UserAdmin_Page> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: MyThemes.yellowColor,
            gradient: LinearGradient(
              colors: [(new Color(0xFFF2C202)), new Color(0xFFFDD738)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 180,
                  width: 180,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                ),
                alignment: Alignment.bottomRight,
                child: Text(
                  "Choose One",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 60, 200, 0),
          padding: EdgeInsets.fromLTRB(20, 20, 200, 0),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminLoginScreen()),
            );
            // Write Click Listener Code Here.
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 17),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(new Color(0xFFF2C202)), new Color(0xFFFDD738)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "ADMIN",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        Container(
          child: Text(
            "OR",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationScreen()),
            );
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 17),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(new Color(0xFFF2C202)), new Color(0xFFFDD738)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "STUDENT",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    )));
  }
}
