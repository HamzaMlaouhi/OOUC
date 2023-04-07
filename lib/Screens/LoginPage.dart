import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * 0.09,
          ),
          Center(
            child: Container(
                height: height * 0.35,
                width: width * 1,
                child: Image.asset('assets/image/Logo.PNG')),
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.08,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Color(0xff1f1f1f),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.08,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "E-mail",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.08,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mot de passe",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Container(
              height: height * 0.08,
              width: width * 0.85,
              child: ElevatedButton(
                  child: Text("connexion".toUpperCase(),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff2b335d)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff2b335d))))),
                  onPressed: () => Navigator.pushNamed(context, '/HomePage')),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Text(
              "Mot de passe oublié?",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Center(
            child: Text(
              "s'inscrire",
              style: TextStyle(
                  color: Color(0xff2b335d),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ]),
      ),
    );
  }
}
