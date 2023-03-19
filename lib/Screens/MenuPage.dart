import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("OOUC")),
      drawer: Drawer(
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
                    children: const <Widget>[
                      Text(
                        'Etudiant 01',
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
              leading: const Icon(Icons.campaign_rounded),
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
              title: Text('Bourses universitaires',
                  style: TextStyle(fontSize: 15)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Aide sociale', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
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
              title: const Text('Prêts universitaire',
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
                      icon: const Icon(Icons.question_mark_rounded),
                      onPressed: () {},
                    ),
                    SizedBox(width: width * 0.01),
                    Text(
                      "Langue ",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SlidingSwitch(
                  value: false,
                  width: 300,
                  onChanged: (bool value) {
                    print(value);
                  },
                  height: height * 0.07,
                  animationDuration: const Duration(milliseconds: 100),
                  onTap: () {},
                  onDoubleTap: () {},
                  onSwipe: () {},
                  textOff: "Français",
                  textOn: "العربية",
                  contentSize: 17,
                  colorOn: const Color(0xffdc6c73),
                  colorOff: const Color(0xff6682c0),
                  background: const Color(0xffe4e5eb),
                  buttonColor: const Color(0xfff7f5f7),
                  inactiveColor: const Color(0xff636f7b),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Page OOUC'),
      ),
    );
  }
}
