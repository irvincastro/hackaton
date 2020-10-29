import 'package:app_capa/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   home: Login(),
  ));
  Firebase.initializeApp();
}