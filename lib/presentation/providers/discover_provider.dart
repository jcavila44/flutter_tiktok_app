import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPostEntity> videos = [];

  Future<void> loadNextPage() async {

    // TODO: cargar videos
  }
}
