// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
      category: json['category'] as String,
      profileImgUrl: json['profileImgUrl'] as String,
      userName: json['userName'] as String,
      vote: json['vote'] as String,
      voteImgUrl: json['voteImgUrl'] as String,
      heartCount: json['heartCount'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'category': instance.category,
      'profileImgUrl': instance.profileImgUrl,
      'userName': instance.userName,
      'vote': instance.vote,
      'voteImgUrl': instance.voteImgUrl,
      'heartCount': instance.heartCount,
      'date': instance.date,
    };
