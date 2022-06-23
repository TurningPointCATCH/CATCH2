import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'dart:math' as math;

import 'bndbox.dart';
import 'camera.dart';
import 'models.dart';

class Haeun extends StatefulWidget {
  final List<CameraDescription> cameras;

  Haeun(this.cameras);

  @override
  _HaeunState createState() => _HaeunState();
}

class _HaeunState extends State<Haeun> {
  List<dynamic> _recognitions=[];
  int _imageHeight = 0;
  int _imageWidth = 0;
  String _model = "";

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  loadModel() async {
    String? res;
    String? res2;

    res = await Tflite.loadModel(
      model: "assets/yolov2_tiny.tflite",
      labels: "assets/yolov2_tiny.txt",
    );
    res2 = await Tflite.loadModel(
        model: "assets/ssd_mobilenet.tflite",
        labels: "assets/ssd_mobilenet.txt");
  }

  setRecognitions(recognitions, imageHeight, imageWidth) {
    setState(() {
      _recognitions = recognitions;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Camera(
            widget.cameras,
            _model,
            setRecognitions,
          ),
          BndBox(
              _recognitions == null ? [] : _recognitions,
              math.max(_imageHeight, _imageWidth),
              math.min(_imageHeight, _imageWidth),
              screen.height,
              screen.width,
              _model),
        ],
      ),
    );
  }
}