import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';
import 'package:flutter_tiktok_app/infrastructure/models/local_video_model.dart';
import 'package:flutter_tiktok_app/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Reposotiy, datasource

  bool initialLoading = true;
  List<VideoPostEntity> videos = [];

  Future<void> loadNextPage() async {

    final List<VideoPostEntity> newVideos = videoPosts
        .map((videoJson) => LocalVideoModel.fromJson(videoJson).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
