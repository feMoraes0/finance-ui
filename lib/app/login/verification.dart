import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finance/app/configs.dart';

class Verification extends StatelessWidget {
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
                      "Step 2/6",
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Icon003.png"), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "Verification",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50.0, 0, 50.0, 45.0),
                child: Text(
                  "Enter 4 digit number that sent to +628128008011",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, height: 1.6),
                ),
              ),
              Container(
                width: size.width - 50.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: size.width - 90.0,
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "8",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            width: 40.0,
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.black12))
                            ),
                          ),
                          Container(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            width: 40.0,
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.black12))
                            ),
                          ),
                          Container(
                            child: Text(
                              "4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            width: 40.0,
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: colors["primary"]))
                            ),
                          ),
                          Container(
                            child: Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            width: 40.0,
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.black12))
                            ),
                          ),

                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        margin: EdgeInsets.only(top: 25.0),
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
                        Navigator.pushNamed(context, "registration");
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Re-send code in 0:30",
                  style: TextStyle(fontSize: 16.0, color: colors["primary"], fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
