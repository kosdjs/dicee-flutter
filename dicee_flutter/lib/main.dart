import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: AppBar(
          title: Text('Cards'),
          backgroundColor: Colors.blue.shade300,
        ),
        body: CardPage(),
      ),
    ),
  );
}

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<int> cardShape = [0, 1, 2, 3];
  List<int> cardNumber = [1, 1, 1, 1];
  void changeCard(){
    for (var i=0; i<4; i++) {
      cardShape[i] = Random().nextInt(4);
      cardNumber[i] = Random().nextInt(13)+1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeCard();
                    });
                  },
                  child: Image.asset('images/'+cardNumber[0].toString()+cardShape[0].toString()+'.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeCard();
                    });
                  },
                  child: Image.asset('images/'+cardNumber[1].toString()+cardShape[1].toString()+'.png'),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeCard();
                    });
                  },
                  child: Image.asset('images/'+cardNumber[2].toString()+cardShape[2].toString()+'.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeCard();
                    });
                  },
                  child: Image.asset('images/'+cardNumber[3].toString()+cardShape[3].toString()+'.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
