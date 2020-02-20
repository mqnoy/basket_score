import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BasketScore"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          RaisedButton(child: Text("score board"), onPressed: (){
            Navigator.pushNamed(context, '/board');
          }),
          Container(
            height: 10.0,
          ),
          RaisedButton(
              child: Text("about apps"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              }),
        ],
      ),
    );
  }
}
