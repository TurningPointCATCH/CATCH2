import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:developer';
import 'dart:isolate';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
