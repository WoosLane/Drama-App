import 'package:flutter/material.dart';
import 'package:drama_ui/theme.dart';
import 'package:drama_ui/screens/main_screens.dart';

void main() {

  runApp(const DramaUI());
}

class DramaUI extends StatelessWidget {
  const DramaUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '너와 나의 드라마',
      debugShowCheckedModeBanner: false,
      home: const MainScreens(),
      theme: theme(),
    );
  }
}
