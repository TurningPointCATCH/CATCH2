import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:developer';
import 'dart:isolate';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(new MyApp(cameras));

  // await Hive.initFlutter();
  // await Hive.openBox('picture');
}
