import 'package:OOUC/Widgets/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

import '../Lang/language_constants.dart';
import '../Widgets/AppBarDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("OOUC")),
      drawer: const AppBarDrawer(),
      bottomNavigationBar: CustomerBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/BlueBackground.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter),
            ),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, right: 0, bottom: 0, left: 10),
                    child: Row(
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/image/user.png'),
                          radius: 30.0,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Hello, Etudiant 01',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20.0),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Bienvenu Sur Oouc.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
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
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      spreadRadius: 1,
                                      blurRadius: 5)
                                ],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/image/Bedroom.png",
                                  ),
                                  alignment: Alignment.center,
                                ),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      child: Text(
                                    translation(context)
                                        .hebergementuniversitaire,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  )),
                                  translation(context).lang != "العربية"
                                      ? Text(
                                          translation(context)
                                              .hebergementuniversitaire1,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        )
                                      : SizedBox(),
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
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ],
                                  color: Colors.white,
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/image/Budget_home.png",
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      child: Text(
                                    translation(context).aidesociale,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  )),
                                  translation(context).lang != "العربية"
                                      ? Text(
                                          translation(context).aidesociale1,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        )
                                      : SizedBox(),
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
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/image/Mortgage_home.png",
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      child: Text(
                                    translation(context).aidesociale,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  )),
                                  translation(context).lang != "العربية"
                                      ? Text(
                                          translation(context).aidesociale1,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        )
                                      : SizedBox(),
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
                                  image: const DecorationImage(
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
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      child: Text(
                                    translation(context).boursesuniversitaires,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  )),
                                  translation(context).lang != "العربية"
                                      ? Text(
                                          translation(context)
                                              .boursesuniversitaires1,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        )
                                      : SizedBox(),
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
                                  image: const DecorationImage(
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
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                      child: Text(
                                    translation(context)
                                        .restaurationuniversitaire,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  )),
                                  translation(context).lang != "العربية"
                                      ? Text(
                                          translation(context)
                                              .restaurationuniversitaire1,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        )
                                      : SizedBox(),
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
                                translation(context).plus,
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              SizedBox(
                                width: width * 0.020,
                              ),
                              FloatingActionButton(
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
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
