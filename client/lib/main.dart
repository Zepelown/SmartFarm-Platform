import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  // 앱 구동 runApp -> 안에 메인 페이지 입력해주면 됨
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Styling Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Styling Example'),
        ),
        body: Center(
          child: Container(
            width: 200, // 너비 조절
            height: 200, // 높이 조절
            decoration: BoxDecoration(
              color: Colors.blue, // 배경색상 변경
              borderRadius: BorderRadius.circular(10), // 테두리 모서리 둥글게 조절
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2), // 그림자 위치 조절
                  blurRadius: 4, // 그림자 흐릿한 정도 조절
                ),
              ],
            ),
            child: Text(
              'Styled Container',
              style: TextStyle(
                color: Colors.white, // 텍스트 색상 변경
                fontSize: 20, // 텍스트 크기 조절
                fontWeight: FontWeight.bold, // 텍스트 굵기 조절
              ),
            ),
          ),
        ),
      ),
    );
  }
}
