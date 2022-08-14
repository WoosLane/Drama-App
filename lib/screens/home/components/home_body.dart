import 'package:drama_ui/models/home.dart';
import 'package:drama_ui/screens/components/image_container.dart';
import 'package:drama_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:json_annotation/json_annotation.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key, required this.home}) : super(key: key);

  final Home home;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),

          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),

          _buildTail(home.heartCount)
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
              child:
                Text(home.category, style: textTheme().bodyText2),
          ),
          Text(
            home.date,
            style: textTheme().bodyText2,
          ),
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageUrl: home.profileImgUrl,
          ),
          Text.rich(
            TextSpan(
                text: ' ${home.userName}',
                style: textTheme().bodyText1
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          home.vote,
          style: textTheme().bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  _buildImage() {
    return Visibility(
      visible: home.voteImgUrl != '',
      child: Image.network(
        home.voteImgUrl,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Padding _buildTail(int heartCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.heart,
            color: Colors.redAccent,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            "$heartCount${'개'}",
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}


