import 'package:flutter/material.dart';

class DetailScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 249, 241, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InfoItem(
                icon: Icons.account_circle,
                title: 'Name',
                description: 'Hiruzen Sarutobi',
              ),
              InfoItem(
                icon: Icons.people,
                title: 'Alias',
                description: 'The professor',
              ),
              InfoItem(
                icon: Icons.forest,
                title: 'Goals',
                description: 'Protect the village of Konohagakure',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  InfoItem(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: const Color.fromRGBO(255, 154, 71, 1),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
