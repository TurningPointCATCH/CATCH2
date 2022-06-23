import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/material.dart';

import 'haeun.dart';
import 'main.dart';

class home extends StatefulWidget {
  const home(List<CameraDescription> cameras, {Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height:60),
            TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Haeun(cameras),)
                  );
                },
                child: Text('haeun')
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Haeun(cameras),)
                  );
                },
                child: Text('yuri')
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Haeun(cameras),)
                  );
                },
                child: Text('gyugung')
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Haeun(cameras),)
                  );
                },
                child: Text('eunjin')
            ),
          ],
        )
      ),
    );
  }
}
