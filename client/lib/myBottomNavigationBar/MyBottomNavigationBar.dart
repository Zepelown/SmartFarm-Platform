import 'package:flutter/material.dart';
import 'package:client/mainPage/mainPage.dart';

List pages = <Widget>[MainPage()];

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top:BorderSide(color: Colors.grey, width: 5.0)),
      ),
      child: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
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
    );
  }
}