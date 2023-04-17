import 'package:flutter/material.dart';

import '../Lang/language.dart';
import '../Lang/language_constants.dart';
import '../main.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({Key? key}) : super(key: key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  @override
  Widget build(BuildContext context) {
    int value = 1;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/image/ProfImage.jpg'),
                    radius: 30.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Etudiant 01",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Etudiant 01@gmail.com',
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
            ListTile(
              leading: new Image.asset("assets/image/Scholarship.png"),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Text(
                  translation(context).boursesuniversitaires +
                      translation(context).boursesuniversitaires1,
                  style: TextStyle(fontSize: 15)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(
                  translation(context).aidesociale +
                      translation(context).aidesociale1,
                  style: TextStyle(fontSize: 15)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: new Image.asset("assets/image/Mortgage.png"),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Text(
                  translation(context).pretsuniversitaire +
                      translation(context).pretsuniversitaire1,
                  style: TextStyle(fontSize: 15)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: SizedBox(height: 0)),
            ),
            Column(
              children: [
                Divider(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(width: width * 0.01),
                    IconButton(
                      icon: new Image.asset("assets/image/light.png"),
                      onPressed: () {},
                    ),
                    SizedBox(width: width * 0.01),
                    Text(
                      translation(context).langue,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Container(
                  width: width * 0.62,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: DropdownButton<Language>(
                    hint: Text(
                      "                 " + translation(context).lang + "  ",
                      style: TextStyle(fontSize: 19),
                    ),
                    icon: const Icon(
                      Icons.language,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onChanged: (Language? language) async {
                      if (language != null) {
                        Locale _locale = await setLocale(language.languageCode);
                        MyApp.setLocale(context, _locale);
                      }
                    },
                    items: Language.languageList()
                        .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                            value: e,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    width: width * 0.2,
                                    child: Text(
                                      e.name,
                                      style: TextStyle(fontSize: 18),
                                    ))
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                )
              ],
            ),
          ],
        ));
  }
}
