import 'package:client/loadingPage/loadingPage.dart';
import 'package:client/mapPange/mapPage.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_common.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

Map<String, MaterialPageRoute<dynamic>?> routes = {
  'route_screen': null,
  'route_second_screen': null,
  'route_third_screen': null,
};

void main() {
  AuthRepository.initialize(appKey: '8bfaf6a334e1d3ad4282d3ffbc19e719');

  runApp(MyApp());  // 앱 구동 runApp -> 안에 메인 페이지 입력해주면 됨
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      home: LoadingPage(),
    );
  }
}
