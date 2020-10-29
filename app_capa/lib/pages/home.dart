import 'dart:async';

import 'package:app_capa/pages/catalogo.dart';
import 'package:app_capa/pages/construccion.dart';
import 'package:app_capa/pages/consultarRecibo.dart';
import 'package:app_capa/pages/estadoCuenta.dart';
import 'package:app_capa/pages/facturacion.dart';
import 'package:app_capa/pages/lecturas.dart';
import 'package:app_capa/pages/login.dart';
import 'package:app_capa/pages/pagoLinea.dart';
import 'package:app_capa/pages/reportes.dart';
import 'package:app_capa/pages/revista.dart';
import 'package:app_capa/pages/usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final auth = FirebaseAuth.instance;
  bool inicioSelected = true;
  
  // int counter = 0;
  // Timer timer;

  // void startTimer(BuildContext context){
  //   timer = Timer.periodic(Duration(seconds:1), (timer) {
  //     setState(() {
  //       if(counter==10){
  //         timer.cancel();
  //         showDialogHelp(context);
  //       }else{
  //         counter++;
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //startTimer(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
              child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              "BIENVENIDO A CAPANET",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            SizedBox(height: 5),
            Text(
              "USUARIO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            SizedBox(height: 15),
            Text(
              "¡¡Te sugerimos actualizar tus datos\npara obtener nuevos y mejores beneficios!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightGreen[700],
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green,
                child: Image.asset(
                  "lib/images/image2.png",
                  fit: BoxFit.cover,
                ),
              ),
              onTap: (){
                print("Consultar recibo");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsultarRecibo()
                  )
                );
              },
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                print("Pagar recibo");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PagoLinea()
                  )
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green,
                child: Image.asset(
                  "lib/images/image3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                print("Revista");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Revista()
                  )
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green,
                child: Image.asset(
                  "lib/images/image4.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                print("Reportes");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Reportes()
                  )
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green,
                child: Image.asset(
                  "lib/images/image1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
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
                      "Usuario",
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.lightBlueAccent,),
              title: Text("Inicio"),
              onTap: (){
                if(inicioSelected){
                  Navigator.pop(context);
                }else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home()
                    )
                  );
                  inicioSelected = true;
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.lightBlueAccent),
              title: Text("Ajustes de usuario"),
              onTap: (){
                inicioSelected = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Usuario()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.lightBlueAccent),
              title: Text("Estado de cuenta"),
              onTap: (){
                inicioSelected = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EstadoCuenta()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.featured_play_list, color: Colors.lightBlueAccent),
              title: Text("Lecturas"),
              onTap: (){
                inicioSelected = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lecturas()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel, color: Colors.lightBlueAccent),
              title: Text("Catálogo de servicios"),
              onTap: (){
                inicioSelected = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Catalogo()
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login()
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}