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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //final String correo;
  //Home({this.correo});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final auth = FirebaseAuth.instance;
  bool inicioSelected = true;

  

  //String prueba;
  

  //SERÁ CON STREAMBUILDER
  //EL LISTEN ES TEMPORAL, ASÍ QUE NO SIRVE ESTE MÉTODO PARA OBTENER DATOS DE FIREBASE. 
  //SERÁ CON STREAMBUILDER
  // void llenarDatosUsuario(){
  //   //BUSCAR USUARIO POR CORREO EN FIREBASE
  //   CollectionReference coleccion = FirebaseFirestore.instance.collection("usuarios");
  //   coleccion.snapshots().listen((snapshot) {
  //     // List docs = snapshot.docs;
  //     // List datas = [];
  //     // for (var doc in docs) {
  //     //   datas.add(doc.data());
  //     // }
  //     // print(datas);
  //     // print(datas[0]);
  //     // print(datas[0]["tipo"]);
      
  //     //prueba = datas[0]["nombre"];//No sirve no le asigna valor

  //     setState(() {
  //       //prueba = datas[0]["nombre"];
  //       prueba = snapshot.docs[0]["nombre"];
  //     });
      
  //   });
    
  //   //CREAR OBJETO USUARIO PARA ENVIAR A HOME DE USUARIO, LECTURISTA O ADMIN COMO PARÁMETRO
  //   // usuario = UsuarioDatos(
  //   //   0,
  //   //   controlNombre.text,
  //   //   controlApPaterno.text,
  //   //   controlApMaterno.text,
  //   //   radioGroupValue,
  //   //   controlFechaNacimiento.text,
  //   //   _organismoSeleccionado.organismo,
  //   //   controlEmail.text,
  //   //   controlTelefono.text,
  //   //   controlCelular.text,
  //   //   controlPassword.text
  //   // );
  // }

  
  
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
  UsuarioDatos usuario;
  List<UsuarioDatos> lista = [];
  String correoActual;

  @override
  Widget build(BuildContext context) {
    // llenarDatosUsuario();
    correoActual = auth.currentUser.email;
    // print(correoActual);
    // print(usuario);
    // print(prueba);
    // //startTimer(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('usuarios').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();

          //CÓDIGOS:
          lista = [];
          //print(snapshot.data.docs);
          print(snapshot.data.docs.length);
          print(snapshot.data.docs[0].data());
          print(snapshot.data.docs[0].data()["tipo"]);
          //Tamaño de snapshot:
          // int tam = snapshot.data.docs.length;

          // //Agregar un usuario único a la lista
          // lista.add(
          //   UsuarioDatos(
          //     snapshot.data.docs[12].data()["tipo"],
          //     snapshot.data.docs[12].data()["nombre"],
          //     snapshot.data.docs[12].data()["apMaterno"],
          //     snapshot.data.docs[12].data()["apPaterno"],
          //     snapshot.data.docs[12].data()["sexo"],
          //     snapshot.data.docs[12].data()["fechaNacimiento"],
          //     snapshot.data.docs[12].data()["ocupacion"],
          //     snapshot.data.docs[12].data()["correo"],
          //     snapshot.data.docs[12].data()["telefono"],
          //     snapshot.data.docs[12].data()["celular"],
          //     snapshot.data.docs[12].data()["password"],
          //   )
          // );

          // print(lista.length);
          // print(lista[0].apPaterno);

          //CREAR LISTA DE DATOS (Snapshot a lista tipo map)
          
          List docs = snapshot.data.docs;
          List datas = [];
          for (var doc in docs) {
            datas.add(doc.data());
          }
          print("LISTA DE DATOS HOME:");
          print(datas.length);
          //print(datas); //Imprime toda la lista en formato app
          datas.forEach((element) {print(element);}); //Imprime toda la lista en formato app con salto de linea

          //BUSCAR UN CONJUNTO DE DATOS ESPECIFICO DE LA LISTA TIPO MAP
          int indice = -1;
          indice = datas.indexWhere((element) => element["correo"]=="$correoActual");
          print(indice);
          if(indice!=-1){
            String datoBuscado;
            datoBuscado = datas[indice]["apPaterno"];
            print("CORREO ENCONTRADO HOME:");
            print(datoBuscado);
            //Llenar datos de usuario encontrado
            usuario = UsuarioDatos(
              datas[indice]["tipo"],
              datas[indice]["nombre"],
              datas[indice]["apPaterno"],
              datas[indice]["apMaterno"],
              datas[indice]["sexo"],
              datas[indice]["fecha"],
              datas[indice]["ocupacion"],
              datas[indice]["correo"],
              datas[indice]["telefono"],
              datas[indice]["celular"],
              datas[indice]["password"],
            );
          }
          print(usuario.correo);

          //SI FUNCIONA, DEVUELVE EL PRIMER ELEMENTO QUE COINCIDE CON LA BÚSQUEDA
          // var busqueda;
          // busqueda = datas.firstWhere((element) => element["contrato"]==55555);
          // print(busqueda);

          //SI FUNCIONA, CREA LISTA DE ELEMENTOS QUE COINCIDEN CON LA BÚSQUEDA
          // List<dynamic> userPrueba;
          // print(userPrueba);
          // userPrueba = datas.where((element) => element["contrato"]==55555).toList();
          // print(userPrueba);

          // UsuarioDatos userPrueba;
          // print(userPrueba);
          // userPrueba = datas.firstWhere((element) => element["contrato"]=="55555");
          // print(userPrueba);

          // for (var i = 0; i < tam; i++) {
          //   lista.add(
          //     UsuarioDatos(
          //       snapshot.data.docs[i].data()["tipo"].data(),
          //       snapshot.data.docs[i].data()["nombre"].data(),
          //       snapshot.data.docs[i].data()["apMaterno"].data(),
          //       snapshot.data.docs[i].data()["apPaterno"].data(),
          //       snapshot.data.docs[i].data()["sexo"].data(),
          //       snapshot.data.docs[i].data()["fechaNacimiento"].data(),
          //       snapshot.data.docs[i].data()["ocupacion"].data(),
          //       snapshot.data.docs[i].data()["correo"].data(),
          //       snapshot.data.docs[i].data()["telefono"].data(),
          //       snapshot.data.docs[i].data()["celular"].data(),
          //       snapshot.data.docs[i].data()["password"].data(),
          //     )
          //   );
          // }
          // print(lista[12]);

          //LLAMADAS A MÉTODOS AQUÍ. PARA LLENAR DATOS.


          return SingleChildScrollView(
                  child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 15),
                Text(
                  //"Welcome",
                  //usuario.sexo,
                  usuario.sexo=="Masculino"?
                  "BIENVENIDO A CAPANET"
                  :"BIENVENIDA A CAPANET",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  //"NOMBRE",
                  "${usuario.nombre}",
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
          );
        }
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
                      correoActual,
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
}

class UsuarioDatos {
  String tipo;
  String nombre;
  String apPaterno;
  String apMaterno;
  String sexo; 
  String fecha;
  String ocupacion;
  String correo;
  String telefono;
  String celular;
  String password;

  UsuarioDatos(this.tipo, this.nombre, this.apPaterno, this.apMaterno, this.sexo, this.fecha,
  this.ocupacion, this.correo, this.telefono, this.celular, this.password);
}