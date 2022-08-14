import 'package:drama_ui/models/icon_menu.dart';
import 'package:drama_ui/screens/my_page/components/card_icon_menu.dart';
import 'package:drama_ui/screens/my_page/components/my_page_header.dart';
import 'package:drama_ui/screens/my_page/setting_page.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('내 정보'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SettingPage(), fullscreenDialog: true,
                  ),
                );
              }, 
              icon: const Icon(Icons.settings), color: Colors.black
          ),
        ],
        bottom: const PreferredSize(
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
            preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView(
        children: [
          const MyPageHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
