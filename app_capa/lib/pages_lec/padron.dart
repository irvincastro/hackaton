import 'package:flutter/material.dart';

class Padron extends StatefulWidget {
  @override
  _PadronState createState() => _PadronState();
}

class _PadronState extends State<Padron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar usuario en el padrón"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Agregar nuevo registro",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              )
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                //controller: controlEmail,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  hintText: "Nombre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                  ),
                )
              ),
            ),
            textField("Direccion"),
            textField("Colonia"),
            textField("Servicio"),
            textField("Contrato"),
            textField("Tarifa"),
            textField("Clave de localización"),
            RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "Agregar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              onPressed: (){}
            ),
          ],
        ),
      ),
    );
  }

  Container textField(String dato){
    return Container(
      padding: EdgeInsets.all(5),
      child: TextField(
        //controller: controlEmail,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          hintText: dato,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.blueAccent, width: 2)
          ),
        )
      ),
    );
  }
}