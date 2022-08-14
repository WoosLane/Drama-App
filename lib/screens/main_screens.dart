import 'package:drama_ui/models/home.dart';
import 'package:drama_ui/screens/contents/contents_screen.dart';
import 'package:drama_ui/screens/my_page/my_page_screen.dart';
import 'package:drama_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,

        children: const [
          HomeScreen(),
          ContentsScreen(),
          MyPageScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: '홈', icon: Icon(CupertinoIcons.home),),
          BottomNavigationBarItem(
            label: '콘텐츠', icon: Icon(CupertinoIcons.checkmark_seal),),
          BottomNavigationBarItem(
            label: '내 정보', icon: Icon(CupertinoIcons.person),),
        ],
      ),
    );
  }
}
