import 'package:app_capa/pages/cambiar_datos2.dart';
import 'package:flutter/material.dart';

class CambiarDatos extends StatefulWidget {
  @override
  _CambiarDatosState createState() => _CambiarDatosState();
}

class _CambiarDatosState extends State<CambiarDatos> {

  String  radioGroupValue = "";
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
        title: Text("Ajustes de usuario"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "Cambiar Datos Personales (usuario o titular del contrato)",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Nombre(s)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Nombre",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Apellido Paterno",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Apellido Paterno",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Apellido Materno",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Apellido Materno",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Sexo: ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ),
                  Radio(
                    value: "Masculino", 
                    groupValue: radioGroupValue, 
                    onChanged: (val){
                      setState(() {
                        radioGroupValue = val;
                      });
                    }
                  ),
                  Text(
                    "Masculino",
                    style: TextStyle(fontSize: 16),
                  ),
                  Radio(
                    value: "Femenino", 
                    groupValue: radioGroupValue, 
                    onChanged: (val){
                      setState(() {
                        radioGroupValue = val;
                      });
                    }
                  ),
                  Text(
                    "Femenino",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Fecha de nacimiento",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 200,
                    //padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      // autovalidate: autoValidate,
                      // validator: validator,
                      // focusNode: focusNode,
                      // controller: controller,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        hintText: "Fecha de nacimiento",
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
                      textAlign: TextAlign.left,
                      //obscureText: obscureText == null ? false : obscureText,
                    ),
                  ),
                  Text(
                    "dd/mm/aaaa",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Ocupación",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
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
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Correo Electrónico",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Correo Electrónico",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              //SizedBox(height: 0),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 10),
              //   child: Text("(Le será enviado un correo de activación a la cuenta proporcionada)"),
              // ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Teléfono particular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Teléfono particular",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Teléfono Celular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                //width: 200,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  // autovalidate: autoValidate,
                  // validator: validator,
                  // focusNode: focusNode,
                  // controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    hintText: "Celular",
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
                  textAlign: TextAlign.left,
                  //obscureText: obscureText == null ? false : obscureText,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: RaisedButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Guardar",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_)=>CambiarDatos2())
                    );
                  }
                ),
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
      Organismos(id: 0, organismo: "Seleccione ocupación"),
      Organismos(id: 1, organismo: "Ama de casa"),
      Organismos(id: 2, organismo: "Estudiante"),
      Organismos(id: 3, organismo: "Empleado de gobierno"),
      Organismos(id: 4, organismo: "Empresa privada"),
      Organismos(id: 5, organismo: "Comerciante")
    ];
  }
}