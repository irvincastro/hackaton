import 'dart:io';
import 'package:app_capa/pages/uploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageCapture extends StatefulWidget {
  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {

  File _imageFile;


  Future<void> _pickImage(ImageSource source) async{
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });

  }

  void _clear(){
    setState(() {
      _imageFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera), 
              onPressed: () => _pickImage(ImageSource.camera)
            ),
            IconButton(
              icon: Icon(Icons.photo_library), 
              onPressed: () => _pickImage(ImageSource.gallery)
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          if(_imageFile != null) ...[
            Image.file(_imageFile),

            Row(
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.crop),
                  onPressed: (){}, 
                ),
                FlatButton(
                  child: Icon(Icons.refresh),
                  onPressed: _clear, 
                )
              ],
            ),

            Uploader(file: _imageFile)
          ]
        ],
      ),
    );
  }
}