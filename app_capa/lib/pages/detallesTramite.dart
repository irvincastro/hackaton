import 'package:app_capa/pages/construccion.dart';
import 'package:app_capa/pages/normatividad.dart';
import 'package:flutter/material.dart';

class DetallesTramite extends StatefulWidget {
  String titulo;
  DetallesTramite({this.titulo});

  @override
  _DetallesTramiteState createState() => _DetallesTramiteState();
}

class _DetallesTramiteState extends State<DetallesTramite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.titulo,
          style: TextStyle(
            //color: Colors.black,
            //fontWeight: FontWeight.bold,
            fontSize: 14
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    child: Text(
                      "Ver normatividad",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (_)=>Normatividad())
                      );
                    }
                  ),
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    child: Text(
                      "Vista previa de impresión",
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
              ),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  "Archivos Anexos",
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
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                width: MediaQuery.of(context).size.width,
                //height: 25,
                //color: Colors.red[900],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Datos Generales",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Divider(thickness: 1, height: 5),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Institución Gubernamental:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "COMISIÓN DE AGUA POTABLE Y ALCANTARILLADO",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Clasificación:",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Trámite",
                          style: TextStyle(
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Homoclave:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.red[50],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\"De conformidad con el artículo 44 de la Ley de Mejora Regulatoria del Estado, la legalidad y el contenido de la información que se inscriba en el sistema, es de estricta responsabilidad de las instituciones que proporcionan la información\"",
                    style: TextStyle(
                      color: Colors.red[700],
                      //fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nombre del Trámite:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${widget.titulo}",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Modalidad:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "VENTANILLA",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Objetivo del Trámite:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "MANTENER ACTUALIZADO EL PADRÓN DE USUARIOS, MISMO QUE SERVIRÁ PARA QUE LOS USUARIOS TENGAN LOS DATOS CORRECTOS EN SU RECIBO DE PAGO Y A LA COMISIÓN SERVIRÁ PARA QUE LAS NOTIFICACIONES, CITATORIOS U OFICIOS SE DIRIJAN A LA PARTE INTERESADA.",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Unidad Administrativa responsable del Trámite:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "DEPARTAMENTO DE ATENCIÓN A USUARIOS",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Mes y Año (MM y AA):",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "08 - 20",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Resolución de respuesta:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "NEGATIVA FICTA",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.grey[100],
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                width: MediaQuery.of(context).size.width,
                //height: 25,
                //color: Colors.red[900],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Requisitos y referencia de consulta",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Persona Física:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''CARTA DE SOLICITUD DIRIGIDA AL GERENTE DEL ORGANISMO OPERADOR, QUE INDIQUE: EL NOMBRE, NÚMERO DE CONTRATO, DOMICILIO, TELÉFONO; DEBERÁ ESTAR FIRMADA POR EL NUEVO PROPIETARIO DEL PREDIO O POR EL REPRESENTANTE LEGAL.

ACREDITAR LA PROPIEDAD MEDIANTE COPIA SIMPLE DE DOCUMENTO IDÓNEO (ESCRITURA PÚBLICA, TÍTULO DE PROPIEDAD, ORDEN DE OCUPACIÓN, ETC).

IDENTIFICACIÓN OFICIAL CON FOTOGRAFÍA.

ÚLTIMO RECIBO FACTURADO AL CORRIENTE EN SUS PAGOS.
COPIA SIMPLE DE CEDULA CATASTRAL ACTUALIZADA''',
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Referencia electrónica que complementa los requisitos",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  border: Border.all(
                    color: Colors.grey[100],
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                width: MediaQuery.of(context).size.width,
                //height: 25,
                //color: Colors.red[900],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Costo, frecuencia y horarios",
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Costo:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\$ 108.72 + IVA VIGENTE AL 10 DE SEP 2020",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Área de Pago:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SUBGERENCIA COMERCIAL (AREA DE CAJAS)",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Frecuencia del Trámite:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "LUNES A VIERNES, DÍAS HÁBILES",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Horario de Atención:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "8:00 A.M. A 16:00 PM",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.grey[100],
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                width: MediaQuery.of(context).size.width,
                //height: 25,
                //color: Colors.red[900],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lugar de atención y ubicación",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lugar de Atención:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ORGANISMOS OPERADORES",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Domicilio:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "VER OBSERVACIONES, EN EL SE MENCIONA LA DIRECCION DE LAS OFICINAS DE CADA ORGANISMO OPERADOR",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Teléfono:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fax:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  border: Border.all(
                    color: Colors.red,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                width: MediaQuery.of(context).size.width,
                //height: 25,
                //color: Colors.red[900],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Vigencia, criterios y observaciones",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "VER OBSERVACIONES, EN EL SE MENCIONA EL NÚMERO TELEFÓNICO DE CADA ORGANISMO OPERADOR",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Vigencia del trámite o servicio:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "VITALICIO",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Plazo de respuesta:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "INMEDIATA",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Criterios de resolución:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "QUE EL TITULAR DEL CONTRATO CAMBIE POR CAUSA DE MUERTE O ENAJENACIÓN DEL BIEN INMUEBLE.",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Observaciones:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '''
UBICACIÓN DE ORGANISMOS OPERADORES:

OTHÓN P. BLANCO: CALLE COROZAL 388 POR ISLA CANCUN Y PRESA DE LA ANGOSTURA, COL. DAVID GUSTAVO GUTIERREZ RUIZ. CP. 77013, CHETUMAL , Q. ROO.
TELÉFONO 01 983 83 5 00 15, FAX EXTENSIÓN 115.

COZUMEL: AV. 15 SUR S/N ENTRE CALLE 1"A" Y AV. JUÁREZ, COL. CENTRO. CP. 77600, COZUMEL, Q. ROO
TELÉFONO 01 987 87 2 0391, FAX EXTENSIÓN 113.


FELIPE CARRILLO PUERTO: CALLE 65 NO. 77 ENTRE CALLE 66 Y 68, FELIPE CARRILLO PUERTO, Q.ROO
TELÉFONO Y FAX 9838340246 CP 77200

JOSÉ MARÍA MORELOS: CALLE NOH BEC S/N ENTRE CECILIO CHI Y KOHUNLICH, JOSÉ MARÍA MORELOS, Q.ROO
TELÉFONO Y FAX 9979780179 CP. 77890

LÁZARO CÁRDENAS: CALLE LÁZARO CÁRDENAS S/N ENTRE RAFAEL E. MELGAR Y JAVIER ROJO GÓMEZ, KANTUNILKIN, Q.ROO CP. 77300
TELÉFONO Y FAX 9848750022

BACALAR: AV. LIBRAMIENTO S/N ENTRE CALLE 20 Y CALLE 22, COLO. BENITO JUÁREZ. CP. 77930 TEL. 9838342903

TULUM: AV. TULUM S/N ENTRE ESCORPION Y COBA NORTE, COL. CENTRO, TULUM. C.P. 77780 TEL 984 87 1 23 20
                    ''',
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 5),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  "Regresar",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                onPressed: (){
                  Navigator.pop(context);
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