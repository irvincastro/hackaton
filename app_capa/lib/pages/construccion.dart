import 'package:flutter/material.dart';

class Construccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proximamente..."),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 230,
          child: Image.asset(
            "lib/images/construccion3.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}