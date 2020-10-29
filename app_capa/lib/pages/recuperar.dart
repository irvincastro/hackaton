import 'package:app_capa/pages/cambiar_password2.dart';
import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/recuperar2.dart';
import 'package:flutter/material.dart';

class Recuperar extends StatefulWidget {
  @override
  _RecuperarState createState() => _RecuperarState();
}

class _RecuperarState extends State<Recuperar> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar contraseña"),
        //centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "Recuperación de contraseña",
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
                "Contrato:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),              
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width-60,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Contrato",
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
                    ),
                  ),
                  //onChanged: onChanged,
                  textAlign: TextAlign.center,
                  //obscureText: obscureText1 == null ? false : obscureText1,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Organismo:",
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
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: DropdownButton(
                  value: _organismoSeleccionado,
                  items: _dropdownMenuItems, 
                  onChanged: onChangeDropdownItem,
                  //style: ,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Correo electrónico:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),              
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width-60,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Correo",
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
                    ),
                  ),
                  //onChanged: onChanged,
                  textAlign: TextAlign.center,
                  //obscureText: obscureText2 == null ? false : obscureText2,
                ),
              ),
              Text(
                "El mismo con el que se registró en CapaNet",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),              
              ),
              

              SizedBox(height: 15),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  "Aceptar",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (_)=>Recuperar2())
                  );
                }
              ),
              SizedBox(height: 15),
            ],
          ),
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