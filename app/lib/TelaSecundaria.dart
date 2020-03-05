import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String batata;

  TelaSecundaria({this.batata});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.amber,
      ),
        body:Container(
          padding: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            Text("Secunda tela! Valor passado ${widget.batata}")
          ],),
        )
    );
  }
}


