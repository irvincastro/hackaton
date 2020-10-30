import 'package:app_capa/pages/cambiar_datos.dart';
import 'package:app_capa/pages/cambiar_password.dart';
import 'package:app_capa/pages/graficas.dart';
import 'package:app_capa/pages/graficas2.dart';
import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/lecturas.dart';
import 'package:app_capa/pages/login.dart';
import 'package:app_capa/pages_admin/admin_alta.dart';
import 'package:app_capa/pages_admin/admin_estad.dart';
import 'package:app_capa/pages_lec/lecturasAdd.dart';
import 'package:app_capa/pages_lec/padron.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeAdmin extends StatelessWidget {
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
              Text(
                "BIENVENIDO ADMINISTRADOR",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.lightBlueAccent,
                    )
                  ),
                  Align(
                    child: Text(
                      "Administrador",
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.add, color: Colors.lightBlueAccent,),
              title: Text("Alta"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminAlta()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.list, color: Colors.lightBlueAccent,),
              title: Text("Estadísticas"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminEstad()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.redAccent),
              title: Text("Salir"),
              onTap: ()async{
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
            ),
          ],
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
                            Icons.add_circle,
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