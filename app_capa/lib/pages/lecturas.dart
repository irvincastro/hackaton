import 'package:flutter/material.dart';

class Lecturas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecturas"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Histórico de lecturas de la cuenta",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Expanded(
            child: Center(
              child: Text("No hay datos para mostrar...")
            )
          )
        ],
      ),
    );
  }
}