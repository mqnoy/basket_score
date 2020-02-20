import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  //2,4,8
  //3,6,9
  int score = 0;
  void tambahScore(int amount) {
    setState(() {
      this.score += amount;
    });
  }
  void resetScore(){
    setState(() {
      this.score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("score"),
      // ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 80.0,
          ),
          Container(
            child: Center(
              child: Text("score", style: TextStyle(fontSize: 50.0)),
            ),
          ),
          Container(
            child:
                Text(this.score.toString(), style: TextStyle(fontSize: 50.0)),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 170.0,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                          child: Text("+2 Point"),
                          onPressed: () {
                            tambahScore(2);
                          }),
                      RaisedButton(
                          child: Text("+4 Point"),
                          onPressed: () {
                            tambahScore(4);
                          }),
                      RaisedButton(
                          child: Text("+8 Point"),
                          onPressed: () {
                            tambahScore(8);
                          })
                    ],
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                          child: Text("+3 Point"),
                          onPressed: () {
                            tambahScore(3);
                          }),
                      RaisedButton(
                          child: Text("+6 Point"),
                          onPressed: () {
                            tambahScore(6);
                          }),
                      RaisedButton(
                          child: Text("+9 Point"),
                          onPressed: () {
                            tambahScore(9);
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                RaisedButton(
                    child: Text("reset"),
                    onPressed: () {
                      resetScore();
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
