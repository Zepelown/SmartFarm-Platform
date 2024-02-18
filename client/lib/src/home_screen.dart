import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

String selectedTitle = '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key?key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? selectedTitle),
      ),
      body: KakaoMap(
        onMapTap: (latLng) {
          print(latLng);
      },
    )
    );
  }
}