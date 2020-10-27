import 'package:app_capa/pages/reportes2.dart';
import 'package:flutter/material.dart';


class Reportes extends StatefulWidget {
  @override
  _ReportesState createState() => _ReportesState();
}

class _ReportesState extends State<Reportes> {

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
        title: Text("Realizar reporte"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "Enviar reporte",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              //Flexible(child: Container()),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Seleccione tipo de reporte",
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
                  height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent, width: 2
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _organismoSeleccionado,
                    items: _dropdownMenuItems, 
                    onChanged: onChangeDropdownItem,
                    style: TextStyle(
                      color: Colors.black
                    ),
                    //itemHeight: null,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Observaciones",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),              
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Container(
                  height: 200,
                  //width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 2
                    ),
                    //borderRadius: BorderRadius.all(Radius.circular(32.0))
                  ),
                  child: TextField(
                    maxLines: 20,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: RaisedButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_)=>Reportes2())
                    );
                  }
                ),
              ),
              //Flexible(child: Container()),
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
      Organismos(id: 0, organismo: "Seleccione"),
      Organismos(id: 1, organismo: "Falta de suministro de agua"),
      Organismos(id: 2, organismo: "Fugas en predio o calle (subir una foto en tiempo real)"),
      Organismos(id: 3, organismo: "Medidores rotos o perdidos"),
      Organismos(id: 4, organismo: "Quejas y denuncias"),
      Organismos(id: 5, organismo: "Inconformidades por consumo excesivo o por cargos del estado de cuenta."),
      Organismos(id: 6, organismo: "Tomas clandestinas"),
      Organismos(id: 7, organismo: "Cambio de giro (doméstico, comercial, hotelero, etc)."),
    ];
  }
}

// class Organismos {
//   int id;
//   String organismo;

//   Organismos({this.id, this.organismo});

//   static List<Organismos> getOrganismos(){
//     return <Organismos>[
//       Organismos(id: 0, organismo: "Seleccione ocupación"),
//       Organismos(id: 1, organismo: "Ama de casa"),
//       Organismos(id: 2, organismo: "Estudiante"),
//       Organismos(id: 3, organismo: "Empleado de gobierno"),
//       Organismos(id: 4, organismo: "Empresa privada"),
//       Organismos(id: 5, organismo: "Comerciante")
//     ];
//   }
// }