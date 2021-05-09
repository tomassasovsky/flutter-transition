import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
