import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:client/educationPage/educationPage.dart';
import 'package:client/homePage/homePage.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  List pages = [HomePage(), EducationPage()];

  void onBottomNavigationBarItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/홈.png'),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/클래스.png'),
            label: '교육/클래스',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/장터.png'),
            label: '펀딩/장터',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/마이페이지.png'),
            label: '마이페이지',
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