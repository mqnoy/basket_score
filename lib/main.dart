import 'package:basket_score/About.dart';
import 'package:basket_score/Board.dart';
import 'package:basket_score/Halamatama.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasketScore());

class BasketScore extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasketScore App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context){return HalamanUtama();},
        '/about' : (BuildContext context){return About();},
        '/board' : (BuildContext context){return Board();},
      },
    );
  }
}
