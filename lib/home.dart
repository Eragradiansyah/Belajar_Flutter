import 'package:flutter/material.dart';
import 'package:fp_flutter/CounterApp.dart';
import 'package:fp_flutter/detailscreen.dart';
import 'package:fp_flutter/detailscreen2.dart';
import 'package:fp_flutter/detailscreen3.dart';
import 'package:fp_flutter/detailscreen4.dart';
import 'package:fp_flutter/firstscreen.dart';
import 'package:fp_flutter/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 249, 241, 1),
        actions: [
          IconButton(
              icon: Icon(Icons.calculate),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return CounterApp();
                  }),
                );
              }),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(251, 249, 241, 1),
              Color.fromRGBO(245, 231, 177, 1),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child: Image.asset("images/hashirama.jpeg"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen();
                          }),
                        );
                      },
                    ),
                    GestureDetector(
                      child: Image.asset("images/tobirama.png"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen2();
                          }),
                        );
                      },
                    ),
                    GestureDetector(
                      child: Image.asset("images/sarutobi.jpeg"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen3();
                          }),
                        );
                      },
                    ),
                    GestureDetector(
                      child: Image.asset("images/minato.jpg"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen4();
                          }),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
