import 'package:flutter/material.dart';
import 'package:fp_flutter/counterapp.dart';
import 'package:fp_flutter/detailscreen.dart';
import 'package:fp_flutter/firstscreen.dart';
import 'package:fp_flutter/home.dart';
import 'package:fp_flutter/login.dart';
import 'package:fp_flutter/signup.dart';
import 'package:fp_flutter/password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(255, 154, 71, 1)),
        useMaterial3: true,
      ),
      home: FirstScreen(),
    );
  }
}
