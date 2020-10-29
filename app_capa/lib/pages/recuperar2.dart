import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/login.dart';
import 'package:flutter/material.dart';

class Recuperar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar contraseña"),
        //centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              color: Colors.red[900],
              child: Center(
                child: Text(
                  "Recuperación de contraseña",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                )
              ),
            ),
            SizedBox(height: 35),
            Center(
              child: Text(
                "Se ha enviedo un correo con\nla información solicitada",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(height: 135),
            RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "Aceptar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_)=>Login())
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}