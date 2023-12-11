import 'package:flutter/material.dart';
import 'package:fp_flutter/login.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 251, 240, 1),
      body: Stack(children: [
        SafeArea(
            child: Column(
          children: [
            Image.asset(
              "images/firstscreen.png",
              width: 400,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(255, 154, 71, 1),
              onPrimary: Color.fromRGBO(255, 243, 233, 1), // Warna teks tombol
            ),
            child: Text(
              'Lets Adventure Together',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return Login();
                }),
              );
            },
          ),
          padding: EdgeInsets.only(top: 450),
        )
      ]),
    );
  }
}
