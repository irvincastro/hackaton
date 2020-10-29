import 'package:app_capa/pages/construccion.dart';
import 'package:app_capa/pages/detallesTramite.dart';
import 'package:app_capa/pages/revista.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Catalogo extends StatelessWidget {

  List<String> tramites = [
    "CAMBIO DEL TÍTULAR DEL CONTRATO",
    "DERECHOS DE LOS USUARIOS (ASISTENCIA EN LÍNEA)",
    "DERECHOS DE LOS USUARIOS (ATENCIÓN EN REDES SOCIALES)",
    "DERECHOS DE LOS USUARIOS (CAPANET)",
    "DERECHOS DE LOS USUARIOS (CENTRO DE ATENCIÓN TELÉFONICA 073)",
    "EMISION DE CONSTANCIA DE NO ADEUDO O NO CONTRATO EN LA DELEGACIÓN DE BENITO JUÁREZ.",
    "EMISIÓN DE CONSTANCIA DE NO ADEUDO Y NO CONTRATO EN LOS ORGANISMOS OPERADORES",
    "EMISIÓN DE CONSTANCIA PARA EL TRANSPORTE DE AGUA POTABLE EN CARRO TANQUE, (PERMISO PARA CARROS-TANQUE)",
    "EMISION DE CONSTANCIAS DE NO ADEUDO O NO CONTRATO EN LA DELEGACION SOLIDARIDAD.",
    "FACTIBILIDAD Y DOTACIÓN DE LITROS POR SEGUNDO (L.P.S) PARA DESARROLLADORES Y GIROS COMERCIALES, HOTELEROS E INDUSTRIALES",
    "INSTALACIÓN DE TOMA (CONTRATO DEL SUMINISTRO DE AGUA POTABLE Y SANEAMIENTO).",
    "MANIFESTACIÓN DE AVISO DE APERTURA (CAMBIO DE TARIFA DEL SERVICIO DE AGUA POTABLE Y ALCANTARILLADO)",
    "PAGA TU RECIBO EN LÍNEA",
    "PROGRAMA DEL ADULTO MAYOR",
    "RECEPCIÓN EN PLANTA DE AGUAS RESIDUALES TRANSPORTADAS EN CARROS TANQUE",
    "REINSTALACIÓN DEL SERVICIO, EN CASO DE LIMITACIÓN O SUSPENSIÓN DEL SERVICIO (RECONEXIÓN)",
    "REPOSICIÓN DE MEDIDOR.",
    "REUBICACIÓN DE TOMA",
    "SERVICIO A PARQUES ACUÁTICOS",
    "SERVICIO DE ASESORÍA EN MATERIA DE ACCESO A LA INFORMACIÓN.",
  ];

  detallesServicio(BuildContext context, int index){
    
    //if(index==0){
      //print("Indice1");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetallesTramite(titulo: tramites[index]),
        )
      );
    //}
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catálogo de trámites y servicios"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.red[900],
            child: Center(
              child: Text(
                "Seleccione un trámite o servicio para más información",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Century Gothic'
                ),
              )
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 18,
                        child: Text(
                          "${index+1}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    title: Text(
                      "${tramites[index]}",
                      style: TextStyle(
                        //color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),
                    ),
                    onTap: (){
                      detallesServicio(context, index);
                    },
                  ),
                );
              }
            ),
          ),
        ],
      )
    );
  }
}