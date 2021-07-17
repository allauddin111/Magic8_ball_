import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        home: Ball()
    ),);

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int rand_Ans=1;
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything??')),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
    Expanded(
      child: FlatButton(
      onPressed: (){
        print('abc');
        setState(() {
          rand_Ans=Random().nextInt(4)+1;
        });

        print('$rand_Ans');
        },
      child: Image.asset('images/ball$rand_Ans.png'),),
    )

            ],
          ),
        ],
      ),
    );
  }
}

