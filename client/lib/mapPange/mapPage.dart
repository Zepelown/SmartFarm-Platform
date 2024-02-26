import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

String selectedTitle = '';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late KakaoMapController mapController;
  int currentLevel = 0;

  // 대한민국의 몇 가지 지역과 그에 해당하는 위도 경도 정보
  final Map<String, LatLng> regions = {
    '서울': LatLng(37.5665, 126.9780),
    '부산': LatLng(35.1796, 129.0756),
    '대구': LatLng(35.8714, 128.6014),
    // 추가적인 지역 정보도 필요에 따라 추가할 수 있습니다.
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? selectedTitle),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250, // 지도의 높이
              child: KakaoMap(
                onMapCreated: ((controller) async {
                  mapController = controller;
                  currentLevel = await mapController.getLevel();
                  setState(() {});
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: regions.keys.map((region) {
                        return ElevatedButton(
                          onPressed: () {
                            mapController.panTo(
                              regions[region]!
                            );
                          },
                          child: Text(region),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          currentLevel++;
                          if (currentLevel >= 14) currentLevel = 14;
                          mapController.setLevel(currentLevel);
                          setState(() {});
                        },
                        color: Colors.white,
                        child: const Text("지도레벨 -1"),
                      ),
                      const SizedBox(width: 8),
                      MaterialButton(
                        onPressed: () {
                          currentLevel--;
                          if (currentLevel <= 1) currentLevel = 1;
                          mapController.setLevel(currentLevel);
                          setState(() {});
                        },
                        color: Colors.white,
                        child: const Text("지도레벨 +1"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('현재 지도레벨은 $currentLevel 입니다'),
                  ),
                  // 이 아래에 댓글 위젯들 추가
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}