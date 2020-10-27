import 'package:app_capa/pages/registro3.dart';
import 'package:flutter/material.dart';

class Registro2 extends StatefulWidget {
  @override
  _Registro2State createState() => _Registro2State();
}

class _Registro2State extends State<Registro2> {
  bool obscureText1 = true;
  bool obscureText2 = true;
  bool checked = false;
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
        title: Text("Registrarse en CAPA"),
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
                    "2. Datos Personales (usuario o titular del contrato)",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              SizedBox(height: 15),
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
              Container(
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
              SizedBox(height: 10),
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
              SizedBox(height: 0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("(Le será enviado un correo de activación a la cuenta proporcionada)"),
              ),
              SizedBox(height: 10),
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "3. Defina su contraseña de acceso",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              SizedBox(height: 15),
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
                    hintText: "Contraseña",
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        
                      ),
                      onPressed: (){
                        setState(() {
                          obscureText1 == true ? obscureText1 = false : obscureText1 = true;
                        });
                      }
                    ),
                  ),
                  //onChanged: onChanged,
                  textAlign: TextAlign.left,
                  obscureText: obscureText1,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("(Mínimo 4 caracteres. No son válidos caracteres especiales. Es sensible a mayúsculas y minúsculas)"),
              ),
              SizedBox(height: 10),
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
                    hintText: "Confirmar contraseña",
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        
                      ),
                      onPressed: (){
                        setState(() {
                          obscureText2 == true ? obscureText2 = false : obscureText2 = true;
                        });
                      }
                    ),
                  ),
                  //onChanged: onChanged,
                  textAlign: TextAlign.left,
                  obscureText: obscureText2,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "4. Términos y condiciones de uso",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Text('''
                    TÉRMINOS Y CONDICIONES DE USO
Los términos y condiciones de uso y de privacidad que a continuación se presentan constituyen el acuerdo entre la Comisión de Agua Potable y Alcantarillado (CAPA) y cualquier usuario del servicio denominado "CAPAnet" de la página o sitio a través de su página de Internet
www.capa.gob.mx
La utilización de CAPAnet por parte de cualquier usuario constituye el pleno y expreso consentimiento por parte del usuario para observar y sujetarse respecto de cada uno de los términos y condiciones que aquí se contienen, así como respecto de las políticas de privacidad, políticas de seguridad y, en su caso, cualesquiera otros documentos que conformen parte o regulen la participación del usuario en este sitio. En el supuesto que cualquiera de los términos a los que habrá de sujetarse el usuario cuando acceda a este sitio sean contrarios a sus intereses, deberá abstenerse de hacer uso del mismo.


Términos generales
Obligaciones del usuario
Al utilizar este sitio me obligo a cumplir con los términos y condiciones de su uso, establecidos en el presente documento (en adelante, los “términos y condiciones”), reconozco haber leído, entendido y estar de acuerdo en sujetarme a sus términos y condiciones. Por lo que al acceder al sitio, estoy de acuerdo en acatar lo anterior.
                    '''),
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  "Acepto las Condiciones de Uso.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                value: checked, 
                onChanged: (value){
                  setState(() {
                    checked = value;
                  });
                }
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
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
                      MaterialPageRoute(builder: (_)=>Registro3())
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