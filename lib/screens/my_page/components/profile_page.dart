import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('프로필'),
      content: SizedBox(
        width: 280,
        height: 300,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(),
        ),
      ),
    );
  }
}
