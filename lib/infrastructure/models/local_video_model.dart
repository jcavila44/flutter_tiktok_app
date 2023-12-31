import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });


  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'No name',
        videoUrl: json["videoUrl"] ?? 'No url',
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );


  VideoPostEntity toVideoPostEntity() => VideoPostEntity(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
