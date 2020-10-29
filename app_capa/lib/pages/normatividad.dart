import 'package:flutter/material.dart';

class Normatividad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Normatividad"),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Text(
                "LEY DE AGUA POTABLE Y ALCANTARILLADO DEL ESTADO DE QUINTANA ROO. ARTICULO 19.- FRACCIÓN V.- COBRAR DE ACUERDO A LAS TARIFAS APROBADAS LOS DERECHOS CORRESPONDIENTES A LA PRESTACIÓN DEL SERVICIO DE AGUA Y ALCANTARILLADO",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),              
              Text(
                "ARTICULO 41.- DE TODA MANIFESTACIÓN O AVISO DE APERTURA, TRASPASO, TRASLADO O CLAUSURA DE GIROS O ESTABLECIMIENTOS OBLIGADOS A ABASTECERSE DE AGUA POTABLE DEL SERVICIO PÚBLICO, ASÍ COMO DE HACER USO DE LOS SISTEMAS DE ALCANTARILLADO, EL USUARIO DEBERÁ DAR AVISO AL ORGANISMO OPERADOR DENTRO DE LOS DIEZ DÍAS SIGUIENTES A LA FECHA DE REALIZADAS LAS MANIFESTACIONES CITADAS, PROPORCIONANDO COPIA DE LA DOCUMENTACIÓN RESPECTIVA.",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                "ARTICULO 14.- LA TRANSMISIÓN DEL DOMINIO DE BIENES INMUEBLES REQUERIRÁ SE DEMUESTRE QUE RESPECTO DEL PREDIO OBJETO DE ELLA SE ESTÁ AL CORRIENTE EN EL PAGO DE LOS DERECHOS POR LOS SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO; LOS NOTARIOS PÚBLICOS Y FUNCIONARIOS FACULTADOS PARA DAR FE DE TALES ACTOS, ESTARÁN OBLIGADOS A EXIGIR LOS CONTRATANTES LA PRESENTACIÓN DE LOS COMPROBANTES RESPECTIVOS, SIN LOS CUALES NO PODRÁN AUTORIZAR LAS TRANSMISIONES. LA VIOLACIÓN DE ESTE PRECEPTO GENERARÁ RESPONSABILIDAD SOLIDARIA PARA DICHOS NOTARIOS Y FUNCIONARIOS RESPECTO DE TALES DERECHOS.",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15),
              Text(
                "LEY DE CUOTAS Y TARIFAS PARA LOS SERVICIOS PÚBLICOS DE AGUA POTABLE Y ALCANTARILLADO, TRATAMIENTO Y DISPOSICIÓN DE AGUAS RESIDUALES DEL ESTADO. ART. 32 LOS USUARIOS DE LOS SERVICIOS PREVISTOS EN ESTA LEY TENDRÁN LOS SIGUIENTES DERECHOS: V. RECIBIR INFORMACIÓN GENERAL SOBRE LOS SERVICIOS PÚBLICOS EN FORMA SUFICIENTE Y DETALLADA, PARA EL EJERCICIO DE SUS DERECHOS Y OBLIGACIONES COMO USUARIO; VI. SER INFORMADOS, CON ANTICIPACIÓN DE LOS CORTES DE SERVICIOS PÚBLICOS PROGRAMADOS.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                "ARTICULO 54 FRACCION IV.- POR CUALESQUIERA OTROS SERVICIOS SOLICITADOS POR EL USUARIO, DIVERSOS A LOS ANTERIORES, EL IMPORTE QUE RESULTE DEL PRESUPUESTO RESPECTIVO, ATENDIENDO A SU REQUERIMIENTO.",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                "ARTICULO 54.- EL PRESTADOR DEL SERVICIO DEBERÁ COBRAR A LOS USUARIOS POR LOS SERVICIOS DIFERENTES A LOS SEÑALADOS EN LA PRESENTE LEY, DE ACUERDO CON LO SIGUIENTE: I.- POR EL CAMBIO DEL TÍTULAR DEL CONTRATO, LA CANTIDAD DE \$ 65.64 II.- POR LA EMISIÓN DE CADA CONSTANCIA DE NO ADEUDO, LA CANTIDAD DE \$ 65.64 III.- POR LA EMISIÓN DE UNA CONSTANCIA PARA EL TRANSPORTE DE AGUA POTABLE EN CARRO TANQUE, LA CANTIDAD DE \$262.29 Y IV.- POR CUALESQUIERA OTROS SERVICIOS SOLICITADOS POR EL USUARIO, DIVERSOS A LOS ANTERIORES , EL IMPORTE QUE RESULTE DEL PRESUPUESTO RESPECTIVO, ATENDIENDO A SU REQUERIMIENTO.",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                "ARTÍCULO 7.- EL MONTO DE LAS CUOTAS Y TARIFAS QUE SE ESTABLECEN EN ESTE ORDENAMIENTO, SE ACTUALIZARÁN MENSUALMENTE EN LA MISMA PROPORCIÓN EN QUE LO HAGA EL ÍNDICE NACIONAL DE PRECIOS AL CONSUMIDOR QUE PUBLIQUE EL BANCO DE MÉXICO EN EL DIARIO OFICIAL DE LA FEDERACIÓN, DICHO FACTOR SE OBTENDRÁ DIVIDIENDO EL ÍNDICE NACIONAL DE PRECIOS AL CONSUMIDOR DEL MES ANTERIOR, AL MÁS RECIENTE DEL PERÍODO ENTRE EL CITADO ÍNDICE CORRESPONDIENTE AL MES ANTERIOR, AL MÁS ANTIGUO DE DICHO PERÍODO, SALVO LAS RELACIONADAS CON EL USO DOMÉSTICO PARA LAS CUALES SE CONSIDERARÁN LOS INCREMENTOS AL SALARIO MÍNIMO VIGENTE EN EL ESTADO.",
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  "Regresar al Trámite o Servicio",
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