import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'About',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Column(
          children: [
            Text('About Page'),
          ],
        ),
      ),
    );
  }
}
