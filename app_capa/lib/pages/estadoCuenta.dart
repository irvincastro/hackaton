import 'package:app_capa/pages/construccion.dart';
import 'package:app_capa/pages/consultarRecibo.dart';
import 'package:app_capa/pages/descargarRecibo.dart';
import 'package:app_capa/pages/facturacion.dart';
import 'package:app_capa/pages/pagoLinea.dart';
import 'package:flutter/material.dart';

class EstadoCuenta extends StatefulWidget {
  @override
  _EstadoCuentaState createState() => _EstadoCuentaState();
}

class _EstadoCuentaState extends State<EstadoCuenta> {

  @override
  Widget build(BuildContext context) {
    double anchoTotal = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Estado de cuenta"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Datos del contratante",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, width: 2
              ),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  width: 1,
                  color: Colors.blue
                )
              ),
              children: [
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Cuenta:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Localización:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Nombre:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Giro:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Dirección:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Código Postal:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Colonia:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "R.F.C.:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Teléfono:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Datos de facturación",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, width: 2
              ),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  width: 1,
                  color: Colors.blue
                )
              ),
              children: [
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Mes Facturado:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Lectura Anterior:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Cálculo:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Lectura Actual:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Servicio:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Meses de Rezago:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Tarifa:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Promedio:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Número de Medidor:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Consumo:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Estado de la Toma:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Folio:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Fechas de facturación",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, width: 2
              ),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  width: 1,
                  color: Colors.blue
                )
              ),
              children: [
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Fecha de Facturación:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Proxima Lectura:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                  ]
                ),
                TableRow(
                  children: [
                    Container(
                      color: Colors.grey[300],
                      child: Text(
                        "Periodo de Consumo:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text("Data"),
                    Container(
                      width: (anchoTotal/4)-4,
                      color: Colors.grey[300],
                      child: Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      ),
                    ),
                    Text(""),
                  ]
                ),                
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: (anchoTotal/2)+4,
            height: 25,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Saldo actual",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Container(
            width: (anchoTotal/2)+4,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, width: 2
              ),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: <Widget>[
                Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(
                      width: 1,
                      color: Colors.blue
                    )
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          color: Colors.grey[300],
                          child: Text(
                            "Importe:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Data",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Container(
                          //height: ,
                          color: Colors.grey[300],
                          child: Text(
                            "Pagar antes de:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Text("Data"),
                      ]
                    ),                
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        width: anchoTotal/8,
                        child: Image.asset(
                          "lib/images/icon1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_)=>ConsultarRecibo())
                        );
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: anchoTotal/8,
                        child: Image.asset(
                          "lib/images/icon2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_)=>DescargarRecibo())
                        );
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: anchoTotal/8,
                        child: Image.asset(
                          "lib/images/icon3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_)=>PagoLinea())
                        );
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: anchoTotal/8,
                        child: Image.asset(
                          "lib/images/icon4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_)=>Facturacion())
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}