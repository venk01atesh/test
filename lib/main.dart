import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/back.dart';

void main() {
runApp(MyApp());
}
String a ="https://tse1.mm.bing.net/th/id/OIP.aBMLyHmvQTodGKocWUzX5wAAAA?rs=1&pid=ImgDetMain&o=7&rm=3";


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: back()
    );
  }
}