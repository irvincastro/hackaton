import 'package:app_capa/pages/graficas.dart';
import 'package:app_capa/pages/graficas2.dart';
import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/imageCapture.dart';
import 'package:app_capa/pages/recuperar.dart';
import 'package:app_capa/pages/registro1.dart';
import 'package:app_capa/pages_admin/homeAdmin.dart';
import 'package:app_capa/pages_lec/home_lec.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final auth = FirebaseAuth.instance;

  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlPassword = TextEditingController();

  bool obscureText = true;
  List<Organismos> _organismos = Organismos.getOrganismos();
  List<DropdownMenuItem<Organismos>> _dropdownMenuItems;
  Organismos _organismoSeleccionado;

  @override
  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(_organismos);
    _organismoSeleccionado = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Organismos>> buildDropDownMenuItems(List organismos){
    List<DropdownMenuItem<Organismos>> items = List();
    for (Organismos organismo in organismos) {
      items.add(
        DropdownMenuItem(
          value: organismo,
          child: Text(organismo.organismo)
        )
      );
    }
    return items;
  }

  onChangeDropdownItem(Organismos seleccionado){
    setState(() {
      _organismoSeleccionado = seleccionado;
    });
  }

  void showDialogHelp(BuildContext contextoVerPin, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero, //this right here
            content: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 220,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      "lib/images/$image.jpg",
                      fit: BoxFit.cover,
                    ),
                    Align(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Cerrar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15
                            ),
                          ),
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.red, 
                              width: 2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showDialogError(BuildContext context, String mensError) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero, //this right here
            content: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white,
                height: 180,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    // Image.asset(
                    //   "lib/images/$image.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                    Align(
                      child: Container(
                        child: Text(
                          "Error de validación",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 25
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Icon(
                          //   Icons.warning,
                          //   size: 50,
                          //   color: Colors.orange,
                          // ),
                          Container(
                            child: Text(
                              mensError,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                        ],
                      ),
                    ),

                    Align(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          //color: Colors.lightBlueAccent,
                          child: Text(
                            "Aceptar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15
                            ),
                          ),
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            border: Border.all(
                              color: Colors.red, 
                              width: 1
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.green,
                  child: Image.asset(
                    "lib/images/login_top2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 150),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    // autovalidate: autoValidate,
                    validator: (value){
                      if(value==""){
                        return "Ingrese correo o contrato";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    keyboardType: TextInputType.emailAddress,
                    controller: controlEmail,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      hintText: "Correo o contrato",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.help_outline,
                          color: Colors.grey,
                          
                        ),
                        onPressed: (){
                          showDialogHelp(context, "help_contrato2");
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (_)=>ImageCapture())
                          // );
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (_)=>Graficas())
                          // );
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (_)=>HomePage())
                          );
                        }
                      ),
                    ),
                    //onChanged: onChanged,
                    textAlign: TextAlign.center,
                    //obscureText: obscureText == null ? false : obscureText,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    // autovalidate: autoValidate,
                    validator: (value){
                      if(value==""){
                        return "Ingrese contraseña";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlPassword,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      hintText: "Contraseña",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                          
                        ),
                        onPressed: (){
                          setState(() {
                            obscureText == true ? obscureText = false : obscureText = true;
                          });
                        }
                      ),
                    ),
                    //onChanged: onChanged,
                    textAlign: TextAlign.center,
                    obscureText: obscureText,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent, width: 2
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  child: DropdownButton(
                    value: _organismoSeleccionado,
                    items: _dropdownMenuItems, 
                    onChanged: (value){
                        //print(value.toString());
                        onChangeDropdownItem(value);
                        if(_organismoSeleccionado.organismo=="Seleccione organismo"){
                          setState(() {
                            errorOrg = error1Mensaje;
                          });
                        }else{
                          setState(() {
                            errorOrg = "";
                          });
                        }
                      },
                  ),
                ),
                errorText(errorOrg),
                AppButton(
                  color: Colors.blueAccent,
                  onPressed: () async{
                    if(validaciones()&&formKey.currentState.validate()){

                      //Validación por contrato
                      if(isNumeric(controlEmail.text)){
                        CollectionReference coleccion = FirebaseFirestore.instance.collection("usuarios");
                        coleccion.snapshots().listen((snapshot) async {
                          List docs = snapshot.docs;
                          List datas = [];
                          for (var doc in docs) {
                            datas.add(doc.data());
                          }
                          print(datas);
                          //List buscar = [];
                          int indice = -1;
                          indice = datas.indexWhere((element) => element["contrato"]==controlEmail.text);
                          print(indice);
                          //print(buscar.length);
                          if(indice!=-1){
                            //Buscar correo
                            String correoBuscado;
                            correoBuscado = datas[indice]["correo"];
                            print("CORREO ENCONTRADO LOGIN:");
                            print(correoBuscado);
                            //correoAcceso = correoBuscado;
                            //Acceder con el correo buscado en base al contrato
                            //accederConContrato(correoBuscado);

                            //ACCEDER CON CORREO BUSCADO POR CONTRATO
                            var user;
                            try {
                              user = await auth.signInWithEmailAndPassword(email: correoBuscado, password: controlPassword.text);
                            } catch (e) {
                              print(e);
                              print(e.code);
                              String mensajeError = e.toString();
                              switch (mensajeError) {
                                case '[firebase_auth/invalid-email] The email address is badly formatted.':
                                  mensajeError = "El email contiene un formato inválido";
                                  break;
                                case '[firebase_auth/unknown] Given String is empty or null':
                                  mensajeError = "Favor de ingresar email";
                                  break;
                                case 'user-not-found':
                                  mensajeError = "Usuario no encontrado";
                                  break;
                                case '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.':
                                  mensajeError = "Usuario no encontrado";
                                  break;
                                case 'wrong-password':
                                  mensajeError = "Contraseña invalida";
                                  break;
                                case '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.':
                                  mensajeError = "Contraseña invalida";
                                  break;
                                case 'network-request-failed':
                                  mensajeError = "Error de red";
                                  break;
                                case 'email-already-in-use':
                                  mensajeError = "El correo ya se encuentra registrado";
                                  break;
                                case 'invalid-email':
                                  mensajeError = "Correo inválido";
                                  break;
                                case 'weak-password':
                                  mensajeError = "La contraseña debe contener al menos 6 caracteres";
                                  break;
                                case '[firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.':
                                  mensajeError = "Demasiados intentos. Bloqueado temporalmente. Intente más tarde.";
                                  break;
                                default:
                                  mensajeError = e.code;
                              }
                              showDialogError(context, mensajeError);
                            }
                            if(user!=null){
                              print("USER");
                              print(user);
                              if(datas[indice]["tipo"]=="0"){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home()
                                  )
                                );
                              }
                              if(datas[indice]["tipo"]=="1"){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeLecturista()
                                  )
                                );
                              }
                              if(datas[indice]["tipo"]=="2"){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home()
                                  )
                                );
                              }
                              
                            }
                          }else{
                            showDialogError(context, "Contrato no encontrado");
                          }
                        });
                      }
                      else{
                        //Validación por correo
                        accesoPorCorreo();
                      }

                      //NO SIRVE PORQUE NO TOMA EL VALOR DEL CORREO, ES UN LISTEN QUE SOLO FUNCIONA EN ESE BLOQUE DE CÓDIGO Y LUEGO DESTRUYE TODOS LOS VALORES.
                      //Y TAMPOCO SE PUEDE USAR 2 AWAIT EN UN MÉTODO NI EN UNO SEPARADO, así que ni modos, sin acceso por contrato.
                      //Se podría si creo un método await dentro del listener y otro método await aparte para el acceso por correo y llamar ese método, así si se puede. Pero no hay tiempo :(

                      //String correoAcceso = controlEmail.text;
                      //Verifica si es numérico para buscar por número de contrato
                      // if(isNumeric(controlEmail.text)){
                      //   CollectionReference coleccion = FirebaseFirestore.instance.collection("usuarios");
                      //   coleccion.snapshots().listen((snapshot) {
                      //     List docs = snapshot.docs;
                      //     List datas = [];
                      //     for (var doc in docs) {
                      //       datas.add(doc.data());
                      //     }
                      //     print(datas);
                      //     //List buscar = [];
                      //     int indice = -1;
                      //     indice = datas.indexWhere((element) => element["contrato"]==int.parse(controlEmail.text));
                      //     print(indice);
                      //     //print(buscar.length);
                      //     if(indice!=-1){
                      //       //Buscar correo
                      //       String correoBuscado;
                      //       correoBuscado = datas[indice]["correo"];
                      //       print("CORREO ENCONTRADO:");
                      //       print(correoBuscado);
                      //       correoAcceso = correoBuscado;
                      //       //Acceder con el correo buscado en base al contrato
                      //       //accederConContrato(correoBuscado);
                      //     }else{
                      //       showDialogError(context, "Contrato no encontrado");
                      //     }
                      //   });
                      // }
                      //else{
                        //Si no es numérico se realiza lo siguiente
                        //Acceder a login
                        //print(correoAcceso);


                        //ACCESO NORMAL

                        // var user;
                        // try {
                        //   user = await auth.signInWithEmailAndPassword(email: controlEmail.text, password: controlPassword.text);
                        // } catch (e) {
                        //   print(e);
                        //   print(e.code);
                        //   String mensajeError = e.toString();
                        //   switch (mensajeError) {
                        //     case '[firebase_auth/invalid-email] The email address is badly formatted.':
                        //       mensajeError = "El email contiene un formato inválido";
                        //       break;
                        //     case '[firebase_auth/unknown] Given String is empty or null':
                        //       mensajeError = "Favor de ingresar email";
                        //       break;
                        //     case 'user-not-found':
                        //       mensajeError = "Usuario no encontrado";
                        //       break;
                        //     case '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.':
                        //       mensajeError = "Usuario no encontrado";
                        //       break;
                        //     case 'wrong-password':
                        //       mensajeError = "Contraseña invalida";
                        //       break;
                        //     case '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.':
                        //       mensajeError = "Contraseña invalida";
                        //       break;
                        //     case 'network-request-failed':
                        //       mensajeError = "Error de red";
                        //       break;
                        //     case 'email-already-in-use':
                        //       mensajeError = "El correo ya se encuentra registrado";
                        //       break;
                        //     case 'invalid-email':
                        //       mensajeError = "Correo inválido";
                        //       break;
                        //     case 'weak-password':
                        //       mensajeError = "La contraseña debe contener al menos 6 caracteres";
                        //       break;
                        //     case '[firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.':
                        //       mensajeError = "Demasiados intentos. Bloqueado temporalmente. Intente más tarde.";
                        //       break;
                        //     default:
                        //       mensajeError = e.code;
                        //   }
                        //   showDialogError(context, mensajeError);
                        // }
                        // if(user!=null){
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Home()
                        //     )
                        //   );
                        // }
                      //}
                      
                    }else{
                      if(validaciones()==false){
                        showDialogError(context, "Seleccione organismo");
                      }
                      if(formKey.currentState.validate()==false){
                        showDialogError(context, "Verifique los campos marcados");
                      }
                    }
                    
                    
                  },
                  name: "Iniciar sesión"
                ),
                GestureDetector(
                  child: Text(
                    "¿Olvidaste tu contraseña?", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 13
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_)=>Recuperar())
                    );
                  },
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Text(
                    "Registrate aquí", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 15
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_)=>Registro1())
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  accesoPorCorreo()async{
    var user;
    try {
      user = await auth.signInWithEmailAndPassword(email: controlEmail.text, password: controlPassword.text);
    } catch (e) {
      print(e);
      print(e.code);
      String mensajeError = e.toString();
      switch (mensajeError) {
        case '[firebase_auth/invalid-email] The email address is badly formatted.':
          mensajeError = "El email contiene un formato inválido";
          break;
        case '[firebase_auth/unknown] Given String is empty or null':
          mensajeError = "Favor de ingresar email";
          break;
        case 'user-not-found':
          mensajeError = "Usuario no encontrado";
          break;
        case '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.':
          mensajeError = "Usuario no encontrado";
          break;
        case 'wrong-password':
          mensajeError = "Contraseña invalida";
          break;
        case '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.':
          mensajeError = "Contraseña invalida";
          break;
        case 'network-request-failed':
          mensajeError = "Error de red";
          break;
        case 'email-already-in-use':
          mensajeError = "El correo ya se encuentra registrado";
          break;
        case 'invalid-email':
          mensajeError = "Correo inválido";
          break;
        case 'weak-password':
          mensajeError = "La contraseña debe contener al menos 6 caracteres";
          break;
        case '[firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.':
          mensajeError = "Demasiados intentos. Bloqueado temporalmente. Intente más tarde.";
          break;
        default:
          mensajeError = e.code;
      }
      showDialogError(context, mensajeError);
    }
    if(user!=null){

      //BUSCAR TIPO DE USUARIO POR MEDIO DEL CORREO EN FIREBASE
      CollectionReference coleccion = FirebaseFirestore.instance.collection("usuarios");
      coleccion.snapshots().listen((snapshot) {
        List docs = snapshot.docs;
        List datas = [];
        for (var doc in docs) {
          datas.add(doc.data());
        }
        print(datas);
        //List buscar = [];
        int indice = -1;
        indice = datas.indexWhere((element) => element["correo"]==controlEmail.text);
        print(controlEmail.text);
        // print(datas[0]["correo"]);
        // print(datas[1]["correo"]);
        // print(datas[2]["correo"]);
        print(indice);
        //print(buscar.length);
        if(indice!=-1){
          //Buscar correo
          String tipoEncontrado;
          tipoEncontrado = datas[indice]["tipo"];
          print(tipoEncontrado);

          if(tipoEncontrado=="0"){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home()
              )
            );
          }
          if(tipoEncontrado=="1"){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeLecturista()
              )
            );
          }
          if(tipoEncontrado=="2"){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeAdmin()
              )
            );
          }
        }

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => HomeLecturista()
        //   )
        // );
      });
    }
  }

  accederConContrato(String correo)async{
    print("ACCEDER POR CONTRATO:");
    var user;
    try {
      user = await auth.signInWithEmailAndPassword(email: correo, password: controlPassword.text);
    } catch (e) {
      print(e);
      print(e.code);
      String mensajeError = e.toString();
      switch (mensajeError) {
        case '[firebase_auth/invalid-email] The email address is badly formatted.':
          mensajeError = "El email contiene un formato inválido";
          break;
        case '[firebase_auth/unknown] Given String is empty or null':
          mensajeError = "Favor de ingresar email";
          break;
        case 'user-not-found':
          mensajeError = "Usuario no encontrado";
          break;
        case '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.':
          mensajeError = "Usuario no encontrado";
          break;
        case 'wrong-password':
          mensajeError = "Contraseña invalida";
          break;
        case '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.':
          mensajeError = "Contraseña invalida";
          break;
        case 'network-request-failed':
          mensajeError = "Error de red";
          break;
        case 'email-already-in-use':
          mensajeError = "El correo ya se encuentra registrado";
          break;
        case 'invalid-email':
          mensajeError = "Correo inválido";
          break;
        case 'weak-password':
          mensajeError = "La contraseña debe contener al menos 6 caracteres";
          break;
        case '[firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.':
          mensajeError = "Demasiados intentos. Bloqueado temporalmente. Intente más tarde.";
          break;
        default:
          mensajeError = e.code;
      }
      showDialogError(context, mensajeError);
    }
    if(user!=null){
      print("USER");
      print(user);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home()
        )
      );
    }
  }

  String errorOrg = "";
  String error1Mensaje = "Favor de seleccionar organismo";

  bool validaciones(){
    bool valid = true;
    if(_organismoSeleccionado.organismo=="Seleccione organismo"){
      setState(() {
        errorOrg = error1Mensaje;
      });
      valid = false;
    }else{
      setState(() {
        errorOrg ="";
      });
    }
    return valid;
  }

  Widget errorText(String mostrarError){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        mostrarError,
        style: TextStyle(
          color: Colors.red[700],
          fontSize: 12
        ),
      ),
    );
  }
}

class Organismos {
  int id;
  String organismo;

  Organismos({this.id, this.organismo});

  static List<Organismos> getOrganismos(){
    return <Organismos>[
      Organismos(id: 0, organismo: "Seleccione organismo"),
      Organismos(id: 1, organismo: "Cozumel"),
      Organismos(id: 2, organismo: "Felipe Carrillo Puerto"),
      Organismos(id: 3, organismo: "Lázaro Cárdenas"),
      Organismos(id: 4, organismo: "José María Morelos"),
      Organismos(id: 5, organismo: "Othón P. Blanco"),
      Organismos(id: 6, organismo: "Tulum"),
      Organismos(id: 7, organismo: "Bacalar"),
    ];
  }
}

class AppButton extends StatelessWidget {
  final MaterialAccentColor color;
  final VoidCallback onPressed;
  final String name;

  const AppButton({this.color, this.onPressed, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: SizedBox(
          height: 43.0,
          child: FlatButton(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            onPressed: onPressed
          )
        )
      )
    );
  }
}

