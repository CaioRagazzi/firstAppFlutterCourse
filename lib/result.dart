import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartGame;
  final int score;

  Result(this.restartGame, this.score);

  String getScore() {
    if (score >= 30) {
      return 'You are Excelent';
    } else if (score >= 25) {
      return 'You are a good person';
    } else if (score >= 20) {
      return 'You are ok';
    } else if (score >= 15) {
      return 'You are strage';
    } else if (score >= 10) {
      return 'You are a bad person';
    } else {
      return 'You are awful';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getScore(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart'),
            textColor: Colors.blue,
            onPressed: restartGame,
          )
        ],
      ),
    );
  }
}
