import 'package:drama_ui/models/home.dart';
import 'package:drama_ui/screens/components/appbar_preferred_size.dart';
import 'package:drama_ui/screens/home/components/home_body.dart';
import 'package:drama_ui/screens/home/components/home_header.dart';
import 'package:drama_ui/screens/home/page2.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<List<Home>> homeList=fetchHome();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('너와 나의 드라마'),

        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Page2(), fullscreenDialog: true,
                  ),
                );
              },
              icon: const Icon(Icons.add_box_rounded), color: Colors.black),
        ],

        bottom: appBarBottomLine(),
      ),
      body: FutureBuilder<List<Home>>(
        future: homeList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Home> userList = snapshot.data ?? [];
            return ListView(
              children: [
                ...List.generate(
                    homeLength,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: HomeBody(
                          home: userList[index]
                        ),
                      )
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();

        }
      ),
    );
  }
}
