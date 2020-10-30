import 'package:app_capa/pages/registro3.dart';
import 'package:app_capa/pages/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';



class Registro2 extends StatefulWidget {
  @override
  _Registro2State createState() => _Registro2State();
}

class _Registro2State extends State<Registro2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;

  Usuario usuario;



  bool obscureText1 = true;
  bool obscureText2 = true;
  bool checked = false;
  String  radioGroupValue = "";
  List<Organismos> _organismos = Organismos.getOrganismos();
  List<DropdownMenuItem<Organismos>> _dropdownMenuItems;
  Organismos _organismoSeleccionado;

  TextEditingController controlNombre = TextEditingController();
  TextEditingController controlApPaterno = TextEditingController();
  TextEditingController controlApMaterno = TextEditingController();
  TextEditingController controlFechaNacimiento = TextEditingController();
  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlTelefono = TextEditingController();
  TextEditingController controlCelular = TextEditingController();
  TextEditingController controlPassword = TextEditingController();
  TextEditingController controlPassword2 = TextEditingController();
  //TextEditingController controlPrueba = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    //Firebase.initializeApp();
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
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar nombre";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlNombre,
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
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar apellido paterno";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlApPaterno,
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
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar apellido materno";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlApMaterno,
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
                Container(
                  height: 20,
                  child: Row(
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
                            errorSex = "";
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
                            errorSex = "";
                          });
                        }
                      ),
                      Text(
                        "Femenino",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                errorText(errorSex),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      //width: (MediaQuery.of(context).size.width/3)*2,
                      width: 250,
                      //padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        // autovalidate: autoValidate,
                        validator: (value){
                          if(value==""){
                            return "Favor de ingresar fecha de nacimiento";
                          }
                          return null;
                        },
                        // focusNode: focusNode,
                        controller: controlFechaNacimiento,
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
                      onChanged: (value){
                        //print(value.toString());
                        onChangeDropdownItem(value);
                        if(_organismoSeleccionado.organismo=="Seleccione ocupación"){
                          setState(() {
                            errorOcu = error2Mensaje;
                          });
                        }else{
                          setState(() {
                            errorOcu = "";
                          });
                        }
                        //print(_organismoSeleccionado.organismo);
                        
                        //print(_organismoSeleccionado.organismo);
                      },
                      //style: ,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: Text(
                      errorOcu,
                      style: TextStyle(
                        color: Colors.red[700],
                        fontSize: 12
                      ),
                    ),
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
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar correo electrónico";
                      }
                      if(!value.contains("@")){
                        return "Email inválido";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlEmail,
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
                  //child: Text("(Le será enviado un correo de activación a la cuenta proporcionada)"),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  //width: 200,
                  //padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    // autovalidate: autoValidate,
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar teléfono particular";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlTelefono,
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
                    validator: (value){
                          if(value==""){
                            return "Favor de ingresar número de celular";
                          }
                          return null;
                        },
                    // focusNode: focusNode,
                    controller: controlCelular,
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
                    validator: (value){
                      if(value==""){
                        return "Favor de ingresar una contraseña";
                      }
                      if(value.length<6){
                        return "Mínimo 6 caracteres";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlPassword,
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
                  child: Text("(Mínimo 6 caracteres. Es sensible a mayúsculas y minúsculas)"),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  //width: 200,
                  //padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    // autovalidate: autoValidate,
                    validator: (value){
                      if(value==""){
                        return "Favor de confirmar contraseña";
                      }
                      if(value!=controlPassword.text){
                        return "La contraseña no coincide";
                      }
                      return null;
                    },
                    // focusNode: focusNode,
                    controller: controlPassword2,
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
                      errorCon = "";
                    });
                  }
                ),
                errorText(errorCon),
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
                    onPressed: ()async{
                      bool formExitoso = formKey.currentState.validate();
                      if(validaciones()&&formExitoso){
                        //Crear registro
                        String mensajeError = "";
                        try {
                          //TRY: CREAR UN NUEVO USUARIO
                          var user = await auth.createUserWithEmailAndPassword(email: controlEmail.text, password: controlPassword.text);
                          if(user!= null){
                            //exitoso = true;

                          }
                          //print(user);
                          print("Registro exitoso");

                          // //CREAR OBJETO USUARIO PARA ENVIAR A HOME DE USUARIO, LECTURISTA O ADMIN COMO PARÁMETRO
                          // usuario = Usuario(
                          //   0,
                          //   controlNombre.text,
                          //   controlApPaterno.text,
                          //   controlApMaterno.text,
                          //   radioGroupValue,
                          //   controlFechaNacimiento.text,
                          //   _organismoSeleccionado.organismo,
                          //   controlEmail.text,
                          //   controlTelefono.text,
                          //   controlCelular.text,
                          //   controlPassword.text
                          // );

                          //AGREGAR DATOS A FIRESTORE
                          CollectionReference users = FirebaseFirestore.instance.collection("usuarios");
                          users.doc("${controlEmail.text}").set({
                            "tipo": "0",
                            "nombre": controlNombre.text,
                            "apPaterno": controlApPaterno.text,
                            "apMaterno": controlApMaterno.text,
                            "sexo": radioGroupValue,
                            "fechaNacimiento": controlFechaNacimiento.text,
                            "ocupacion": _organismoSeleccionado.organismo,
                            "correo": controlEmail.text,
                            "telefono" : controlTelefono.text,
                            "celular" : controlCelular.text,
                            "password" : controlPassword.text
                          }).then((value) {
                            print("User Added");
                            //Navigator.pop(context);
                          }).catchError((error) => print("Failed to add user: $error"));

                          //MOSTRAR DATOS DEL USUARIO ACTUAL:
                          var userActual = auth.currentUser;
                          print(userActual.email);
                          print(user.user.email);
                          

                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (_)=>Registro3())
                          );
                          //CATCH: Mostrar error al no poder crear nuevo usuario
                        } catch (e) {
                          print(e.code);
                          switch (e.code) {
                            case 'user-not-found':
                              mensajeError = "Usuario no encontrado";
                              break;
                            case 'wrong-password':
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
                            default:
                              mensajeError = e.code;
                          }
                          print(mensajeError);
                          print(e);
                          showDialogError(context, mensajeError);
                        }

                      }else{
                        showDialogError(context, "Favor de verificar los campos marcados");
                      }
                      // if(formExitoso==false){
                      // }
                      //bool exitoso = false;
                      // print(controlPrueba.text);
                      // if(controlPrueba.text==""){
                      //   print("Vacio");
                      // }

                      //print(user);
                      
                    }
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }//Fin de método build

  String error1Mensaje = "Seleccione una opción";
  String error2Mensaje = "Favor de seleccionar ocupación";
  String error3Mensaje = "Favor de leer y aceptar términos";
  String errorSex = "";
  String errorOcu = "";
  String errorCon = "";

  bool validaciones(){
    bool valid = true;
    if(_organismoSeleccionado.organismo=="Seleccione ocupación"){
      setState(() {
        errorOcu = error2Mensaje;
      });
      valid = false;
    }
    print(radioGroupValue);
    print(errorSex);
    if(radioGroupValue==""){
      setState(() {
        errorSex = error1Mensaje;
      });
      valid = false;
    }else{
      setState(() {
        errorSex = "";
      });
    }
    if(!checked){
      setState(() {
        errorCon = error3Mensaje;
      });
      valid = checked;
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
      Organismos(id: 0, organismo: "Seleccione ocupación"),
      Organismos(id: 1, organismo: "Ama de casa"),
      Organismos(id: 2, organismo: "Estudiante"),
      Organismos(id: 3, organismo: "Empleado de gobierno"),
      Organismos(id: 4, organismo: "Empresa privada"),
      Organismos(id: 5, organismo: "Comerciante")
    ];
  }
}

class Usuario {
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

  Usuario(this.tipo, this.nombre, this.apPaterno, this.apMaterno, this.sexo, this.fecha,
  this.ocupacion, this.correo, this.telefono, this.celular, this.password);
}
//Objeto objeto = Objeto();
// class Objeto {
//   int id;
//   String data;

//   Objeto({this.id});
// }