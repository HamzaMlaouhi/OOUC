import 'package:OOUC/Widgets/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_switch/sliding_switch.dart';

import '../Widgets/AppBarDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: const Text("OOUC")),
      drawer: AppBarDrawer(),
      bottomNavigationBar: CustomerBottomNavigationBar(),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/BlueBackground.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter),
          ),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                      height: height * 0.22,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/Bedroom.png",
                            ),
                            alignment: Alignment.center,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: Text(
                            "Héberhement ",
                            style: TextStyle(fontSize: 22),
                          )),
                          Text(
                            "universitaire",
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                      height: height * 0.22,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/Budget.png",
                            ),
                            alignment: Alignment.center,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: Text(
                            "Aide ",
                            style: TextStyle(fontSize: 22),
                          )),
                          Text(
                            "sociale",
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                      height: height * 0.22,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/Mortgage.png",
                            ),
                            alignment: Alignment.center,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: Text(
                            "prêts",
                            style: TextStyle(fontSize: 22),
                          )),
                          Text(
                            "universitaire",
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                width: width * 0.03,
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                      height: height * 0.22,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/image 1761.png",
                            ),
                            alignment: Alignment.center,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: Text(
                            "Bourse",
                            style: TextStyle(fontSize: 22),
                          )),
                          Text(
                            "universitaire",
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                      height: height * 0.22,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/Halal Food (1).png",
                            ),
                            alignment: Alignment.center,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: Text(
                            "Restauration ",
                            style: TextStyle(fontSize: 22),
                          )),
                          Text(
                            "universitaire",
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          )
                        ],
                      )),
                  SizedBox(
                    height: height * 0.18,
                  ),
                  Row(
                    children: [
                      Text(
                        "Plus",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      SizedBox(
                        width: width * 0.020,
                      ),
                      new FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: width * 0.05,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
