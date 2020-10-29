import 'package:app_capa/pages/descargarRecibo2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_view/photo_view.dart';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class DescargarRecibo extends StatefulWidget {
  @override
  _DescargarReciboState createState() => _DescargarReciboState();
}

class _DescargarReciboState extends State<DescargarRecibo> {
  static final GlobalKey screenshotKey = new GlobalKey();

  @override
  void dispose() {
    // TODO: implement dispose
    //screenshotKey =null;
    super.dispose();
  }

  void _takeScreenShot() async {
    //textToImage();
    RenderRepaintBoundary boundary =
        screenshotKey.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    print("INFO:"+pngBytes.toString());
    var filePath = await ImagePickerSaver.saveFile(fileData: pngBytes, title: "titulo");
    print("RUTA: "+filePath);
  }

  Container containerAzul(String content, double ancho){
    return Container(
      color: Colors.cyan[600],
      height: 10,
      width: ancho,
      child: Center(
        child: Text(
          content.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 6.5
          ),
        ),
      ),
    );
  }
  Container containerBlancoBold(String content, double ancho){
    return Container(
      padding: EdgeInsets.only(left: 10),
      color: Colors.white,
      height: 10,
      width: ancho,
      child: Text(
        content.toUpperCase(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
  Container containerGris(String content, double ancho){
    return Container(
      color: Colors.grey[350],
      height: 10,
      width: ancho,
      child: Center(
        child: Text(
          content.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 6.5
          ),
        ),
      ),
    );
  }
  Container containerAmarillo(String content, double ancho){
    return Container(
      color: Colors.yellow[600],
      height: 20,
      width: ancho,
      child: Center(
        child: Text(
          content.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
  Container containerGrisBold(String content, double ancho){
    return Container(
      color: Colors.grey,
      height: 10,
      width: ancho,
      child: Center(
        child: Text(
          content.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
  Container containerBlanco(String content, double ancho){
    return Container(
      color: Colors.white,
      height: 10,
      width: ancho,
      child: Center(
        child: Text(
          content.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 6.5
          ),
        ),
      ),
    );
  }
  Container containerBlanco2(String content, double ancho){
    return Container(
      padding: EdgeInsets.only(left: 20),
      color: Colors.white,
      height: 10,
      width: ancho,
      child: Text(
        content.toUpperCase(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 6.5
        ),
      ),
    );
  }
  Container containerBlancoBig(String content, double ancho){
    return Container(
      padding: EdgeInsets.only(left: 0),
      color: Colors.white,
      height: 10,
      width: ancho,
      child: Text(
        content.toUpperCase(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 10
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double anchoTotal = MediaQuery.of(context).size.width;
    double altoTotal = MediaQuery.of(context).size.height-105;

    return Scaffold(
      appBar: AppBar(
        title: Text("Consultar Recibo (Descargar)"),
        //centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.file_download),
        //     onPressed: (){}
        //   )
        // ],
      ),
      body: Column(
        children: <Widget>[
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 25,
          //   color: Colors.red[900],
          //   child: Center(
          //     child: Text(
          //       "Puede ampliar la imagen",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: 'Century Gothic'
          //       ),
          //     )
          //   ),
          // ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            child: Text(
              "Descargar recibo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            onPressed: (){
              _takeScreenShot();
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_)=>DescargarRecibo2())
              );
            },
          ),
          RepaintBoundary(
            key: screenshotKey,
            child: Container(
              height: altoTotal-25,
              width: anchoTotal,
              //color: Colors.green, //No se aplicar el color
              child: PhotoView.customChild(
                minScale: PhotoViewComputedScale.contained * 1,
                maxScale: PhotoViewComputedScale.covered * 5,
                child: SingleChildScrollView(
                                child: Column(
                    children: <Widget>[
                      //130 px
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: (anchoTotal/3)*2,
                                color: Colors.pink,
                                height: 40,
                                child: Image.asset(
                                  "lib/images/header1.png",
                                  fit: BoxFit.cover
                                ),
                              ),
                              Container(
                                color: Colors.grey,
                                height: 20,
                                width: (anchoTotal/3)*2,
                                child: Center(
                                  child: Text(
                                    "usaurio".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("nombre:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("dirección:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("colonia:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("servicio:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("cálculo:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("promedio:", anchoTotal/6),
                                  containerBlancoBig("DATA", (anchoTotal/6)*3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("fecha de impresión:", (anchoTotal/6)*2),
                                  containerBlancoBig("DATA", (anchoTotal/6)*2),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: anchoTotal/3,
                            color: Colors.red,
                            height: 130,
                            child: Column(
                              children: <Widget>[
                                containerAmarillo("total a pagar", anchoTotal/3),
                                Container(
                                  //padding: EdgeInsets.only(left: 20),
                                  color: Colors.white,
                                  height: 30,
                                  width: anchoTotal/3,
                                  child: Center(
                                    child: Text(
                                      "198.94".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                containerAmarillo("vencimiento", anchoTotal/3),
                                Container(
                                  //padding: EdgeInsets.only(left: 20),
                                  color: Colors.white,
                                  height: 20,
                                  width: anchoTotal/3,
                                  child: Center(
                                    child: Text(
                                      "DATA".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                containerAmarillo("meses vencidos", anchoTotal/3),
                                Container(
                                  //padding: EdgeInsets.only(left: 20),
                                  color: Colors.white,
                                  height: 20,
                                  width: anchoTotal/3,
                                  child: Center(
                                    child: Text(
                                      "DATA".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerAzul("Contrato", anchoTotal/6),
                          containerAzul("tarifa", anchoTotal/6),
                          containerAzul("lect. ant.-lect. ant.", anchoTotal/6),
                          containerAzul("consumo m3", anchoTotal/6),
                          containerAzul("clave de loc.", anchoTotal/6),
                          containerAzul("medidor", anchoTotal/6),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerAzul("último pago", anchoTotal/6),
                          containerAzul("atraso", anchoTotal/6),
                          containerAzul("entrega", anchoTotal/6),
                          containerAzul("perioso", anchoTotal/6),
                          containerAzul("mes facturado", anchoTotal/6),
                          containerAzul("estado de toma", anchoTotal/6),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                          containerGris("data", anchoTotal/6),
                          containerBlanco("data", anchoTotal/6),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerAzul("doc. a pagar", anchoTotal/6),
                          containerAzul("ndoc.", anchoTotal/6),
                          containerAzul("importe total", anchoTotal/6),
                          containerAzul("a pagar", anchoTotal/6),
                          containerAzul("saldo", anchoTotal/3),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                color: Colors.grey[350],
                                height: 60,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 6.5
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                color: Colors.cyan[600],
                                height: 30,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "¿qué harías sin agua?".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.yellow[600],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                color: Colors.white,
                                height: 25,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "paga tu recibo a tiempo".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                //padding: EdgeInsets.symmetric(vertical: 5),
                                color: Colors.white,
                                height: 25,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "evita corte y cobro de reconexión".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: anchoTotal/2,
                                child: Image.asset(
                                  "lib/images/frase1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                color: Colors.white,
                                height:30,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "REFERENCIA BANCARIA".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/6,
                                    child: Text(
                                      "Banorte".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/3,
                                    child: Text(
                                      "36123".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/6,
                                    child: Text(
                                      "Bancomer".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/3,
                                    child: Text(
                                      "1023721".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/6,
                                    child: Text(
                                      "Santander".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/3,
                                    child: Text(
                                      "4347".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/6,
                                    child: Text(
                                      "Clave:".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    color: Colors.white,
                                    height: 10,
                                    width: anchoTotal/3,
                                    child: Text(
                                      "0200008806677370238".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    color: Colors.white,
                                    height:30,
                                    width: anchoTotal/4,
                                    child: Center(
                                      child: Text(
                                        "FOLIO No.".toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    color: Colors.white,
                                    height: 30,
                                    width: anchoTotal/4,
                                    child: Center(
                                      child: Text(
                                        "2009002876".toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              containerBlanco("", anchoTotal/2),
                              Container(
                                color: Colors.cyan[600],
                                height: 10,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "conceptos de cobro".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 6.5,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        color: Colors.cyan[100],
                                        height: 10,
                                        width: anchoTotal/4,
                                        child: Center(
                                          child: Text(
                                            "concepto".toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 6.5,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                      containerBlanco2("", anchoTotal/4),
                                      containerBlanco2("AGUA:", anchoTotal/4),
                                      containerBlanco2("DRENAJE:", anchoTotal/4),
                                      containerBlanco2("TRATAMIENTO:", anchoTotal/4),
                                      containerBlanco2("OTROS CARGOS:", anchoTotal/4),
                                      containerBlanco2("MULTAS:", anchoTotal/4),
                                      containerBlanco2("ACTUALIZACION:", anchoTotal/4),
                                      containerBlanco2("REZAGO:", anchoTotal/4),
                                      containerBlanco2("BASE IVA 16%", anchoTotal/4),
                                      containerBlanco2("BASE IVA 0%", anchoTotal/4),
                                      containerBlanco2("IVA COBRADO", anchoTotal/4),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        color: Colors.cyan[100],
                                        height: 10,
                                        width: anchoTotal/4,
                                        child: Center(
                                          child: Text(
                                            "importe".toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 6.5,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                      containerBlanco2("", anchoTotal/4),
                                      containerBlanco2("135.69", anchoTotal/4),
                                      containerBlanco2("47.49", anchoTotal/4),
                                      containerBlanco2("6.78", anchoTotal/4),
                                      containerBlanco2("0.00", anchoTotal/4),
                                      containerBlanco2("0.00", anchoTotal/4),
                                      containerBlanco2("0.00", anchoTotal/4),
                                      containerBlanco2("0.00", anchoTotal/4),
                                      containerBlanco2("189.96", anchoTotal/4),
                                      containerBlanco2("0", anchoTotal/4),
                                      containerBlanco2("8.68", anchoTotal/4),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: anchoTotal/2,
                                color: Colors.white,
                              ),
                              Container(
                                padding: EdgeInsets.all(1),
                                width: anchoTotal/2,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: .5
                                  ),
                                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                                ),
                                child: Text(
                                  "Este recibo entregado electrónicamente únicamente podrá ser pagado en las ventanillas de atención al público en las oficinas de la Comisión de Agua Potable y Alcantarillado.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.8
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                width: anchoTotal/2,
                                color: Colors.white,
                              ),
                              Container(
                                color: Colors.cyan[100],
                                height: 20,
                                width: anchoTotal/2,
                                child: Center(
                                  child: Text(
                                    "total a pagar".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: anchoTotal/2,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        color: Colors.cyan[100],
                        height: 20,
                        width: anchoTotal,
                        child: Center(
                          child: Text(
                            "".toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          containerGrisBold("usuario", anchoTotal/2),
                          containerGrisBold("mes facturado", anchoTotal/4),
                          containerGrisBold("vencimiento", anchoTotal/4),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerBlancoBold("nombre:", anchoTotal/6),
                          containerBlancoBig("DATA", anchoTotal/3),
                          containerBlancoBig("DATA", anchoTotal/4),
                          containerBlancoBig("DATA", anchoTotal/4),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          containerBlancoBold("dirección:", anchoTotal/6),
                          containerBlancoBig("DATA", anchoTotal/3),
                          containerGrisBold("total a pagar", anchoTotal/2),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("colonia:", anchoTotal/6),
                                  containerBlancoBig("DATA", anchoTotal/3),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  containerBlancoBold("contraro:", anchoTotal/6),
                                  containerBlancoBig("DATA", anchoTotal/3),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: anchoTotal/2,
                            height: 20,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "198.94",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      //containerBlanco("", anchoTotal),
                      Row(
                        children: <Widget>[
                          Container(
                            //padding: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            height:30,
                            width: anchoTotal/4,
                            child: Center(
                              child: Text(
                                "FOLIO No.".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            height:30,
                            width: anchoTotal*.75,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "DATA".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        height: 25,
                        width: anchoTotal,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}