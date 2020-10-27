import 'package:app_capa/pages/login.dart';
import 'package:flutter/material.dart';

class Registro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrarse en CAPA"),
        centerTitle: true,
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
                  "¡Gracias por ingresar a nuestro servicio!",
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
                "La cuenta ha sido activada\nya puede ingresar a CapaNet",
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
                "Continuar",
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
            Expanded(child: Text("")),
            Text(
              "Dudas y aclaraciones,por favor contáctenos:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              ),
            ),
            Text(
              "joaquinfuente@capa.gob.mx",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              ),
            ),
            Text(
              "ederiperez@capa.gob.mx",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              ),
            ),
          ],
        ),
      ),
    );
  }
}