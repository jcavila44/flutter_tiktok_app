import 'package:flutter_tiktok_app/domain/datasources/video_post_datasource.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';
import 'package:flutter_tiktok_app/infrastructure/models/local_video_model.dart';
import 'package:flutter_tiktok_app/shared/data/local_video_post.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPostEntity> newVideos = videoPosts
        .map((videoJson) =>
            LocalVideoModel.fromJson(videoJson).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
