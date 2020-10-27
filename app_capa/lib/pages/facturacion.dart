import 'package:flutter/material.dart';

class Facturacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facturación"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15),
            Text(
              "FACTURACIÓN ELECTRÓNICA",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0),
              width: MediaQuery.of(context).size.width,
              //height: 150,
              color: Colors.green,
              child: Image.asset(
                "lib/images/facturacion.png",
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}