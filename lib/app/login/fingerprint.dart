import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finance/app/configs.dart';

class Fingerprint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: colors["background"],
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(Icons.arrow_back_ios, size: 20.0),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Step 4/6",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: colors["primary"]),
                    ),
                    Icon(Icons.arrow_back_ios, size: 20.0, color: colors["background"]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0, bottom: 20.0),
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Icon004.png"), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "Fingerprint",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50.0, 0, 50.0, 45.0),
                child: Text(
                  "To add your fingerprint, lift and rest your finger at home button repeatedly (optional).",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, height: 1.6),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                decoration: BoxDecoration(color: Colors.white38, borderRadius: BorderRadius.circular(10.0)),
                child: Icon(Icons.fingerprint, size: 120.0, color: Colors.redAccent,)
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Skip This Step ",
                      style: TextStyle(fontSize: 16.0, color: colors["primary"], fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward, color: colors["primary"], size: 18.0,)
                  ],
                )
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  margin: EdgeInsets.only(top: 40.0),
                  width: size.width - 90.0,
                  decoration: BoxDecoration(
                    color: colors["primary"],
                    borderRadius: BorderRadius.circular(180.0),
                  ),
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0xffffffff)),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "verification");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
