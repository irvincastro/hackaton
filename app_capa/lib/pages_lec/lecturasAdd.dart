import 'package:flutter/material.dart';

class LecturasAdd extends StatefulWidget {
  @override
  _LecturasAddState createState() => _LecturasAddState();
}

class _LecturasAddState extends State<LecturasAdd> {

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
        title: Text("Agregar lectura"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Agregar nueva lectura",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              )
            ),
            Text(
                  "Seleccione usuario",
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
                          onChangeDropdownItem(value);
                        }
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.brown[300],
                    )
                  ],
                ),
          ],
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
      Organismos(id: 0, organismo: "Seleccione usuario"),
      Organismos(id: 1, organismo: "551260"),
      Organismos(id: 2, organismo: "545656"),
      Organismos(id: 3, organismo: "123255"),
      Organismos(id: 4, organismo: "584546"),
      Organismos(id: 5, organismo: "546541"),
      Organismos(id: 6, organismo: "325351"),
      Organismos(id: 7, organismo: "325325"),
    ];
  }
}