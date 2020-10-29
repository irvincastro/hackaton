import 'package:app_capa/pages/home.dart';
import 'package:app_capa/pages/recuperar.dart';
import 'package:app_capa/pages/registro1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
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
                  // validator: validator,
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
                  // validator: validator,
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
                  onChanged: onChangeDropdownItem,
                  //style: ,
                ),
              ),
              AppButton(
                color: Colors.blueAccent,
                onPressed: () async{
                  var user;
                  try {
                    user = await auth.signInWithEmailAndPassword(email: controlEmail.text, password: controlPassword.text);
                  } catch (e) {
                    print(e);
                  }
                  if(user!=null){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home()
                      )
                    );
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