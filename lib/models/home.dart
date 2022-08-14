// // 샘플 데이터 1
// String homeTitle = '이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.';


//Json Data 받기
import 'dart:convert';
import 'dart:async';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'home.g.dart';


int homeLength = 0;

Future<List<Home>> fetchHome() async {
  final response = await http.get(Uri.parse('http://ec2-3-80-40-187.compute-1.amazonaws.com:8080/create_vote'));

  var a = jsonDecode(response.body);

  List<Home> temp = [];

  for (var i = 0; i < homeLength; i++){
    temp.add(Home.fromJson(a[i]));
  }

  if (response.statusCode == 200) {
    return temp;
  } else {
    throw Exception('데이터를 불러오는데 실패했습니다.');
  }
}

@JsonSerializable(explicitToJson: true)
class Home {
  final String category;
  final String profileImgUrl;
  final String userName;
  final String vote;
  final String voteImgUrl;
  final int heartCount;
  final String date;

  Home({
    required this.category,
    required this.profileImgUrl,
    required this.userName,
    required this.vote,
    required this.voteImgUrl,
    required this.heartCount,
    required this.date,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
