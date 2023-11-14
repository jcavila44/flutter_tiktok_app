import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/config/helpers/human_formats.dart';
import 'package:flutter_tiktok_app/domain/entities/video_post_entitiy.dart';

class VideoButtons extends StatelessWidget {
  final VideoPostEntity video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            iconData: Icons.favorite,
            iconColor: Colors.red,
            iconValue: video.likes),
        const SizedBox(height: 20),
        _CustomIconButton(
            iconData: Icons.remove_red_eye_outlined, iconValue: video.views),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
            child: const _CustomIconButton(
                iconData: Icons.play_circle_outline, iconValue: 0)),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int iconValue;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    iconColor,
    required this.iconData,
    required this.iconValue,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color, size: 30),
        ),
        if (iconValue > 0)
          Text(HumanFormats.humanReadableNumber(iconValue.toDouble())),
      ],
    );
  }
}
