import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Revista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Revista agua en Quintana Roo"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    "Deslice para navegar entre páginas",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Century Gothic'
                    ),
                  )
                ),
              ),
              Expanded(
                child: Image.asset(
                  "lib/images/revista${index+1}.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        }
      )
    );
  }
}