import 'package:flutter_tiktok_app/domain/datasources/video_post_datasource.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';
import 'package:flutter_tiktok_app/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;
  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
