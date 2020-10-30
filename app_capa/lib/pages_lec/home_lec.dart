import 'package:app_capa/pages/cambiar_datos.dart';
import 'package:app_capa/pages/cambiar_password.dart';
import 'package:app_capa/pages/lecturas.dart';
import 'package:app_capa/pages/login.dart';
import 'package:app_capa/pages_lec/lecturasAdd.dart';
import 'package:app_capa/pages_lec/padron.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeLecturista extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecturista"),
        backgroundColor: Colors.brown,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new), 
            onPressed: ()async{
              try {
                await auth.signOut();
              } catch (e) {
                print(e);
              }
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Login()
                ),
                (Route<dynamic> route) => false
              );
            },
          )
        ],
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
                  MaterialPageRoute(builder: (_)=>Padron())
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
                      child: Center(
                        child: Text(
                          "Padrón de usuarios",
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
                        child: Text(
                          "Agregar un nuevo usuario\nen el registro",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                          textAlign: TextAlign.center,
                        )
                      )
                    ),
                    Expanded(
                      child: Center(
                        child: Icon(
                          Icons.add_circle,
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
                  MaterialPageRoute(builder: (_)=>LecturasAdd())
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
                      child: Center(
                        child: Text(
                          "Lecturas",
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
                        child: Text(
                          "Agregar datos de lectura",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
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
          ],
        ),
      ),
    );
  }
}