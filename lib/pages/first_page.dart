import 'package:flutter/material.dart';
import 'package:transition_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: Text('Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_time),
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => SecondPage(),
    transitionDuration: Duration(seconds: 2),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

      // return SlideTransition(
      //   position: Tween<Offset>(
      //     begin: Offset(1.0, 0.0),
      //     end: Offset.zero,
      //   ).animate(curvedAnimation),
      //   child: child,
      // );

      // return ScaleTransition(
      //   child: child,
      //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
      // );

      // return RotationTransition(
      //   child: child,
      //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
      // );

      return RotationTransition(
        turns: Tween<double>(begin: 7.0, end: 1.0).animate(curvedAnimation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: child,
        ),
      );
    },
  );
}
