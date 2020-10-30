import 'package:app_capa/pages/cambiar_datos.dart';
import 'package:app_capa/pages/cambiar_password.dart';
import 'package:app_capa/pages/graficas.dart';
import 'package:app_capa/pages/graficas2.dart';
import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/lecturas.dart';
import 'package:app_capa/pages/login.dart';
import 'package:app_capa/pages_lec/lecturasAdd.dart';
import 'package:app_capa/pages_lec/padron.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminEstad extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Administrador"),
        backgroundColor: Colors.deepPurple,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 10),
              cuadro(context, "Gráficas de encuestas"),
              SizedBox(height: 10),
              cuadro(context, "Ver lista de reportes"),
              SizedBox(height: 10),
              cuadro(context, "Gráficas de reportes"),
              SizedBox(height: 10),
              
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector cuadro(BuildContext context, String data){
    return GestureDetector(
                onTap: (){
                  if(data=="Gráficas de reportes"){
                    print("Crear");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_)=>HomePage())
                    );
                  }else{
                    if(data=="Gráficas de encuestas"){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (_)=>Graficas())
                      );
                    }else{
                      print("Datos");
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (_)=>Padron())
                      );
                    }
                  }
                  
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 2
                    ),
                    //borderRadius: BorderRadius.all(Radius.circular(32.0))
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        color: Colors.deepPurple[200],
                        child: Center(
                          child: Text(
                            data,
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                            ),
                          )
                        )
                      ),
                      // Expanded(
                      //   child: Center(
                      //     child: Text(
                      //       "",
                      //       style: TextStyle(
                      //         color: Colors.blue[900],
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 16
                      //       ),
                      //       textAlign: TextAlign.center,
                      //     )
                      //   )
                      // ),
                      Expanded(
                        child: Center(
                          child: Icon(
                            Icons.list,
                            size: 50,
                            color: Colors.deepPurple,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
  }
}