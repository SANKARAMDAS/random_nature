import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ImagePage(),
    ),
  );
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text('Nature Image'),
        ),
      ),
      body: Nature(),
    );
  }
}

class Nature extends StatefulWidget {
  @override
  _NatureState createState() => _NatureState();
}

class _NatureState extends State<Nature> {

  int natureImage = 1;

  void changeImage(){
    setState(() {
       natureImage = Random().nextInt(14) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/nature$natureImage.jpg'),
        onPressed: (){
          changeImage();
        },
      ),
    );
  }
}
