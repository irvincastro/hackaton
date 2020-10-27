import 'package:app_capa/pages/cambiar_password2.dart';
import 'package:app_capa/pages/home.dart';
import 'package:flutter/material.dart';

class CambiarPassword extends StatefulWidget {
  @override
  _CambiarPasswordState createState() => _CambiarPasswordState();
}

class _CambiarPasswordState extends State<CambiarPassword> {
  bool obscureText1  = true;
  bool obscureText2  = true;
  bool obscureText3  = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes de usuario"),
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
                    "Modificar contraseña",
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
                "Escriba su contraseña actual:",
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
                    hintText: "Contraseña actual",
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
                  textAlign: TextAlign.center,
                  obscureText: obscureText1 == null ? false : obscureText1,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Escriba la nueva contraseña:",
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
                        hintText: "Nueva contraseña",
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
                      textAlign: TextAlign.center,
                      obscureText: obscureText2 == null ? false : obscureText2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Vuelva a escribir la nueva contraseña:",
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
                    hintText: "Confirmar nueva contraseña",
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
                          obscureText3 == true ? obscureText3 = false : obscureText3 = true;
                        });
                      }
                    ),
                  ),
                  //onChanged: onChanged,
                  textAlign: TextAlign.center,
                  obscureText: obscureText3 == null ? false : obscureText3,
                ),
              ),
              SizedBox(height: 15),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  "Cambiar",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (_)=>CambiarPassword2())
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