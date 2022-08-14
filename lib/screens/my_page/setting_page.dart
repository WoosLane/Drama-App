import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.clear, color: Colors.black)
        ),
      ),
      body: Column(
        children: [
          ListView(
            children: const [
              Text('로그인'),
              Text('로그아웃')
            ],
          )
        ]
      ),
    );
  }
}
