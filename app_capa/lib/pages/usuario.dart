import 'package:app_capa/pages/cambiar_datos.dart';
import 'package:app_capa/pages/cambiar_password.dart';
import 'package:flutter/material.dart';

class Usuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes de usuario"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                print("Datos");
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_)=>CambiarDatos())
                );
              },
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  //color: Colors.white,
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 2
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      color: Colors.green,
                      child: Image.asset(
                        "lib/images/cambiar1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Cambiar datos de\n registro",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                          textAlign: TextAlign.center,
                        )
                      )
                    ),
                    Expanded(
                      child: Center(
                        child: Icon(
                          Icons.edit,
                          size: 80,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Contraseña");
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_)=>CambiarPassword())
                );
              },
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  //color: Colors.white,
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 2
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      color: Colors.green,
                      child: Image.asset(
                        "lib/images/cambiar3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Cambiar contraseña",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        )
                      )
                    ),
                    Expanded(
                      child: Center(
                        child: Icon(
                          Icons.lock_outline,
                          size: 80,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}