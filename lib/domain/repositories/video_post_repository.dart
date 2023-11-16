import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';

abstract class VideoPostRepository {
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId);
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page);
}
