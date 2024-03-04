import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:client/MyBottomNavigationBar/MyBottomNavigationBar.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            expandedHeight: 150.0,
            iconTheme: IconThemeData(color: Colors.white, size: 50.0),
            title: Text('홈', style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold), ),

            actions: [
              IconButton(
                onPressed: () {

                  },
                icon: Icon(Icons.person, size: 50.0),

              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.notifications, size: 50.0,),

              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Container(
                width: MediaQuery.of(context).size.width - 180.0,
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '게시물, 이웃 검색',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(5.0),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  ServiceSection(),
                  PostSection(),
                ],
              )
            ),
          )
        ],
      ),

      bottomNavigationBar: MyBottomNavigationBar(),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/NU.jpg'),
              ),
              accountName: Text("누누"),
              accountEmail: Text("Lookie@naver.com"),
              //onDetailsPressed: () {},
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.home),
              iconColor: Colors.purple,
              //focusColor: Colors.purple,
              title: Text("홈"),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}

class ServiceSection extends StatefulWidget {

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  int _sliderIndex = 0;

  final CarouselController _controller = CarouselController();

  List bannerList = [
    'assets/images/광고.png',
    'assets/images/광고.png',
    'assets/images/광고.png',
    'assets/images/광고.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("어떤 서비스를 찾으시나요?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Image.asset('assets/icons/지식인.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    Text("지식인", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
              Column(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Image.asset('assets/icons/정부.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                  Text("정부보조금", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Image.asset('assets/icons/영농일지.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                  Text("영농일지", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Image.asset('assets/icons/펀딩.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                  Text("스마트팜 펀딩", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                ],
              ),
            ]
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Image.asset('assets/icons/장터.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    Text("장터", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Image.asset('assets/icons/날씨.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    Text("날씨", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Image.asset('assets/icons/경매시세.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    Text("경매시세", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Image.asset('assets/icons/지도.png'), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    Text("지도", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 127,
                          width: 322,
                          child: Stack(
                            children: [
                              sliderWidget(),
                              sliderIndicator(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]
          ),
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 5,
            indent: 0,
            endIndent: 0,
          ),
        ]
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: bannerList.map(
          (img) {
            return Builder(
              builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(img),
                  ),
                );
              },
            );
          },
      ).toList(),
      options: CarouselOptions(
        height: 200,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _sliderIndex = index;
          });
        }
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: bannerList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width:12,
              height: 12,
              margin:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                  Colors.white.withOpacity((_sliderIndex == entry.key ? 0.9:0.4)),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '인스타처럼 게시물',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          // 여기에 인스타처럼 게시물을 표시하는 위젯들을 추가할 수 있습니다.
        ],
      ),
    );
  }
}