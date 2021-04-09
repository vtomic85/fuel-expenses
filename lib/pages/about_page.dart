import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About'),
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
