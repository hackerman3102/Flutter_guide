import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;
  final Function reset;
  Result(this.res,this.reset);
  String get resultPhrase {
    String resultText;
    if (res >= 4) {
      resultText = 'Your score: $res';
    } 
    else {
      resultText = 'Better Luck Next Time ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              
            
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz"),onPressed:reset ,textColor: Colors.green,)
        ],
      ),
    );
  }
}
