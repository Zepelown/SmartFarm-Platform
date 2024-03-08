import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            expandedHeight: 150.0,
            iconTheme: IconThemeData(color: Colors.white, size: 36.0),
            title: Text('홈', style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.bold), ),

            actions: [
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.person, size: 36.0),

              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.notifications, size: 36.0,),

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
                    contentPadding: EdgeInsets.all(4.0),
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
                    //PostSection(),
                  ],
                )
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            sliver: PostSection(),
          ),
        ],
      ),
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
    return _body();
  }

  Widget _body() {
    return SliverList.builder(
      itemCount: 50,
      itemBuilder: (context, index) => const Feed(
        userUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&usqp=CAU',
        userName: '_ugsxng99',
        images: [
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisv-yQgXGrto6OxQxX62JyvyQGvRsQQ760g&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQifBWUhSiSfL0t8M3XCOe8aIyS6de2xWrt5A&usqp=CAU',
        ],
        likesNum: 12,
        commentsNum: 6,
      ),
    );
  }
}

class Feed extends StatefulWidget {
  final String userUrl;
  final String userName;
  final List images;
  final int likesNum;
  final int commentsNum;
  const Feed({super.key,
    required this.userUrl, required this.userName, required this.images, required this.likesNum, required this.commentsNum});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(),
        _images(),
       /* _options(),
        _comment(),*/
      ],
    );
  }

  Widget _header()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageAvatar(
                url: widget.userUrl,
                type : AvatarType.BASIC,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.userName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              )
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.more_horiz),
        )
      ],
    );
  }

  Widget _images() {
    return CarouselSlider.builder(
        itemCount: widget.images.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            color: Colors.black,
            width: Get.size.width,
            height: Get.size.width,
            child: CachedNetworkImage(
              imageUrl: widget.images[0],
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          enableInfiniteScroll: false,
          aspectRatio: 1,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = 0;
            });
          },
        ));
  }
}

enum AvatarType { ON, OFF, STORY, BASIC}

class ImageAvatar extends StatelessWidget {
  final double width;
  final String url;
  final AvatarType type;
  final void Function()? onTap;
  const ImageAvatar({
    super.key,
    this.width = 30,
    required this.url,
    required this.type,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      AvatarType.BASIC => _basicImage(), // 기본 아바타 이미지
      AvatarType.STORY => _storyAvatar(),
      AvatarType.ON => _onImage(),
      AvatarType.OFF => _offImage(),
    };
  }

  Widget _basicImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(65),
      child: SizedBox(
        width: width,
        height: width,
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _storyAvatar() {
    return Container(
        padding: const EdgeInsets.all(3.5),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xfffce80a),
                  Color(0xfffc3a0a),
                  Color(0xffc80afc),
                ])),
        child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: _basicImage()));
  }

  Widget _onImage() {
    return Container(
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(100.0)),
      child: Container(
        padding: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
        child: _basicImage(),
      ),
    );
  }

  Widget _offImage() {
    return Container(
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
      child: _basicImage(),
    );
  }
}

