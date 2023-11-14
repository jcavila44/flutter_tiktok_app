import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';
import 'package:flutter_tiktok_app/presentation/widgets/shared/video_buttons.dart';
import 'package:flutter_tiktok_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPostEntity> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics:
          const BouncingScrollPhysics(), //Esto sirve para darle un efecto de revote
      itemCount: videos.length,
      itemBuilder: (contex, index) {
        final VideoPostEntity videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
