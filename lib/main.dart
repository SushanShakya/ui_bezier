import 'package:bezier/part2.dart';
import 'package:bezier/part3.dart';
import 'package:bezier/part4.dart';
import 'package:flutter/material.dart';

void main() => runApp(Bezier());

class Bezier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bezier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Part2(),
            Part3(),
            Part4(),
          ],
        ),
      ),
    );
  }
}
