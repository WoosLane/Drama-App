import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('드라마 검색'),

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.clear, color: Colors.black,))
      ),

      body: const TextForm2(),
    );
  }
}


class TextForm2 extends StatelessWidget {
  const TextForm2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '제목, 키워드',
            ),
          ),
        ),
      ],
    );
  }
}