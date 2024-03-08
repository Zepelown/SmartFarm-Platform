import 'package:flutter/material.dart';
import 'package:client/myBottomNavigationBar/MyBottomNavigationBar.dart';

class EducationPage extends StatefulWidget {

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.green,
                pinned: true,
                expandedHeight: 60.0,
                iconTheme: IconThemeData(color: Colors.white, size: 36.0),
                title: Container(
                    width: MediaQuery.of(context).size.width - 200.0,
                    height: 30.0,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '관심작물, 멘토 검색',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        //contentPadding: EdgeInsets.all(5.0),
                      ),
                    ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.person, size: 32.0),

                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.notifications, size: 32.0,),
                  ),
                ],
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TabBarDelegate(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text("SliverList $index"),
                  );
                }, childCount: 30)
              )
            ],
          ),
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

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  const TabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.green,
      child: TabBar(
        tabs: [
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.green,
              child: const Text(
                "교육",
                style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.green,
              child: const Text(
                "클래스",
                style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
        indicatorWeight: 3,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}