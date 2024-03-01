import 'package:flutter/material.dart';
import 'package:client/mapPange/mapPage.dart';
import 'package:client/mainPage/mainPage.dart';
import 'dart:async';

String selectedTitle = '';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key?key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
      setState(() {
        _isLoading = false;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff508974),
      //appBar: AppBar(title: Text("hello", textAlign: TextAlign.center,), backgroundColor: Colors.blue,),
      body: Center(
        child: AnimatedOpacity(
          opacity: _isLoading ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 여기에 로고 이미지 등 로딩 화면의 내용을 추가할 수 있습니다.
              CircularProgressIndicator(), // 예시로 로딩 인디케이터를 추가
            ],
          ),
        ),
      ),
    );
  }
}