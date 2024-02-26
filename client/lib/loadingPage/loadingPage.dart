import 'package:flutter/material.dart';
import 'package:client/mapPange/mapPage.dart';
import 'dart:async';

String selectedTitle = '';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key?key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("hello", textAlign: TextAlign.center,), backgroundColor: Colors.blue,),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: Alignment.center,
          child: Text("스마트팜 플랫폼", textAlign: TextAlign.center, textScaleFactor: 3.0,),
        )
        //child: Image.asset('assets/splash_image.png'),
      ),
    );
  }
}