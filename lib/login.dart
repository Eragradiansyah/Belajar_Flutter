import 'package:flutter/material.dart';
import 'package:fp_flutter/firstscreen.dart';
import 'package:fp_flutter/home.dart';
import 'package:fp_flutter/signup.dart';
import 'package:fp_flutter/password.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 251, 235, 1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Login to be Hokage",
                style: TextStyle(
                  color: Color.fromRGBO(255, 154, 71, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/logo.png",
                height: 120,
                width: 120,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 9),
              child: Text(
                "Email",
                style: TextStyle(
                  color: Color.fromRGBO(255, 154, 71, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 251, 235, 1),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 154, 71, 1),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 9),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color.fromRGBO(255, 154, 71, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 251, 235, 1),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 154, 71, 1),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Password();
                      },
                    ),
                  );
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 154, 71, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Home();
                    }),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Does Not Have Account"),
                  TextButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 154, 71, 1),
                        fontSize: 14,
                        fontFamily: 'Poppins', // Gunakan jenis huruf 'Poppins'
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return Signup();
                        }),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Color.fromARGB(255, 255, 255, 255),
  primary: Color.fromRGBO(255, 154, 71, 1),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);
