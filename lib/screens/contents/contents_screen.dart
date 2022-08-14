import 'package:drama_ui/models/product.dart';
import 'package:drama_ui/screens/contents/search_page.dart';
import 'package:flutter/material.dart';
import 'package:drama_ui/screens/contents/components/product_item.dart';


class ContentsScreen extends StatelessWidget {
  const ContentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('콘텐츠'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SearchPage(), fullscreenDialog: true,
                  ),
                );
              },
              icon: const Icon(Icons.search), color: Colors.black),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            product: productList[index],
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
