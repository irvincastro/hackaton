import 'package:app_capa/pages/registro2.dart';
import 'package:flutter/material.dart';

class Registro1 extends StatefulWidget {
  @override
  _Registro1State createState() => _Registro1State();
}

class _Registro1State extends State<Registro1> {

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
                "Clave de localización",
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
                  onChanged: onChangeDropdownItem,
                  //style: ,
                ),
              ),
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
                      // validator: validator,
                      // focusNode: focusNode,
                      // controller: controller,
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
                      // validator: validator,
                      // focusNode: focusNode,
                      // controller: controller,
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
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (_)=>Registro2())
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