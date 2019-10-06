import 'package:flutter/material.dart';
import 'package:finance/app/configs.dart';

class Last extends StatelessWidget {
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
                      "Step 5/6",
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Icon005.png"), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(left: 80.0, bottom: 15.0, right: 80.0),
                child: Text(
                  "One step away to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50.0, 0, 50.0, 30.0),
                child: Text(
                  "Now we need to verify your identify",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, height: 1.6),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 15.0),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(9.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Use identify card",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(180.0),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(253, 177, 161, 1.0),
                                      Color.fromRGBO(255, 128, 158, 1.0),
                                    ]
                                  )
                                ),
                                child: Text(
                                  "Recommended",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Get the full feature of your IndoAlliz!",
                          style: TextStyle(height: 1.4),
                        ),
                        Text("You can store up to IDR 10 Million", style: TextStyle(height: 1.4))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(9.0),
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle),
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "Without identify card",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text("You only can store IDR 1 Million to", style: TextStyle(height: 1.4)),
                        Text("your IndoAlliz wallet", style: TextStyle(height: 1.4))
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  margin: EdgeInsets.only(top: 30.0),
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
