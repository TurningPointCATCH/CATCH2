import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/material.dart';
import 'haeun.dart';
import 'home.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp(List<CameraDescription> cameras, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(cameras),
    );
  }
}