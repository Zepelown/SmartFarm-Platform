import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
              padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                backgroundImage: AssetImage('Assets/Images/NU.jpg'),
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

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          8,
              (index) => IconButton(
            onPressed: () {},
            icon: Icon(Icons.category),
            tooltip: 'Service ${index + 1}',
          ),
        ),
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '탐색',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: '추가',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '프로필',
        ),
      ],
    );
  }
}