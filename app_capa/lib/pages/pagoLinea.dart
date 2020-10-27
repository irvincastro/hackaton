import 'package:app_capa/pages/construccion.dart';
import 'package:flutter/material.dart';

class PagoLinea extends StatefulWidget {
  @override
  _PagoLineaState createState() => _PagoLineaState();
}

class _PagoLineaState extends State<PagoLinea> {
  String  radioGroupValue = "";

  @override
  Widget build(BuildContext context) {
    double anchoTotal = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pago en línea"),
        //centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                color: Colors.blue[300],
                child: Center(
                  child: Image.asset(
                    "lib/images/pagoLinea.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Cuenta".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Folio".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nombre de usuario".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Fecha límite de pago".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Importe".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Comisión bancaria".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    height: 28,
                    color: Colors.blue[100],
                    width: anchoTotal/2,
                    padding: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Total a pagar".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),              
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 28,
                    width: anchoTotal/2,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 1
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(32.0))
                    ),
                    child: Text(
                      "data".toUpperCase(),
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18
                      ), 
                    )
                  ),
                ],
              ),
              
              SizedBox(height: 10),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Tipo de pago".toUpperCase(),
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ),
                  Container(
                    height: 30,
                    //color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "tarjeta", 
                          groupValue: radioGroupValue, 
                          onChanged: (val){
                            setState(() {
                              radioGroupValue = val;
                            });
                          }
                        ),
                        Text(
                          "Tarjeta de Crédito o Débito",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.blue,
                    height: 30,
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "cheque", 
                          groupValue: radioGroupValue, 
                          onChanged: (val){
                            setState(() {
                              radioGroupValue = val;
                            });
                          }
                        ),
                        Text(
                          "Cheque Electrónico Bancomer",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.blue,
                    height: 30,
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: "clabe", 
                          groupValue: radioGroupValue, 
                          onChanged: (val){
                            setState(() {
                              radioGroupValue = val;
                            });
                          }
                        ),
                        Text(
                          "CLABE cualquier banco",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "Realizar pago",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_)=>Construccion())
                );
              }
            ),
            ],
          )
        ),
      ),
    );
  }
}