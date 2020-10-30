import 'package:app_capa/pages/registro2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Registro1 extends StatefulWidget {
  @override
  _Registro1State createState() => _Registro1State();
}

class _Registro1State extends State<Registro1> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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


  void showDialogError(BuildContext contextoVerPin) {
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
                              "Favor de verificar los campos marcados",
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
  void showDialogError2(BuildContext contextoVerPin) {
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
                              "Verifique sus datos",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrarse en CAPA"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 25,
                  color: Colors.red[900],
                  child: Center(
                    child: Text(
                      "1. Validar los datos de su recibo de consumo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Century Gothic'
                      ),
                    )
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "Organismo operador",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
                SizedBox(height: 5),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent, width: 2
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: DropdownButton(
                    value: _organismoSeleccionado,
                    items: _dropdownMenuItems, 
                    onChanged: (value){
                      setState(() {
                        errorOrg = "";
                      });
                      onChangeDropdownItem(value);
                    },
                    //style: ,
                  ),
                ),
                errorText(errorOrg),
                SizedBox(height: 15),
                Text(
                  "Número de contrato",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      //padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextFormField(
                        // autovalidate: autoValidate,
                        validator: (value){
                          if(value==""){
                            return "Favor de ingresar contrato";
                          }
                          return null;
                        },
                        // focusNode: focusNode,
                        controller: controlContrato,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          hintText: "Número de contrato",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                          )
                        ),
                        //onChanged: onChanged,
                        textAlign: TextAlign.center,
                        //obscureText: obscureText == null ? false : obscureText,
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onTap: (){
                        showDialogHelp(context, "help_contrato");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Clave de localización",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      //padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextFormField(
                        // autovalidate: autoValidate,
                        validator: (value){
                          if(value==""){
                            return "Favor de ingresar clave";
                          }
                          return null;
                        },
                        // focusNode: focusNode,
                        controller: controlLocal,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          hintText: "Clave de localización",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blueAccent, width: 2)
                          )
                        ),
                        //onChanged: onChanged,
                        textAlign: TextAlign.center,
                        //obscureText: obscureText == null ? false : obscureText,
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onTap: (){
                        print("object");
                        showDialogHelp(context, "help_clav_localizacion");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Validar",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  onPressed: (){
                    //print(_organismoSeleccionado.organismo);
                    bool formExitoso = formKey.currentState.validate();
                    if(validaciones()&&formExitoso){
                      //Buscar en firebase
                      CollectionReference coleccion = FirebaseFirestore.instance.collection("padron");
                      coleccion.snapshots().listen((snapshot) {
                        List docs = snapshot.docs;
                        List datas = [];
                        for (var doc in docs) {
                          datas.add(doc.data());
                        }
                        print(datas);
                        List buscar = [];
                        buscar = datas.where((element) => element["contrato"]==int.parse(controlContrato.text)).toList();
                        print(buscar);
                        print(buscar.length);
                        if(buscar.length>0){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (_)=>Registro2())
                          );
                        }else{
                          showDialogError2(context);
                        }
                      });
                    }else{
                      showDialogError(context);
                    }
                    
                  }
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }//fin build

  TextEditingController controlContrato = TextEditingController();
  TextEditingController controlLocal = TextEditingController();
  String errorOrg = "";
  String error1Mensaje = "Favor de seleccionar organismo";

  bool validaciones(){
    bool valid = true;
    if(_organismoSeleccionado.organismo=="Seleccione organismo"){
      setState(() {
        errorOrg = error1Mensaje;
      });
      valid = false;
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