import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/theme/helpers/human_format.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideosButtons extends StatelessWidget {
  final VideoPostEntity video;

  const VideosButtons({
    super.key,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton( value: video.likes, iconColor:Colors.red, iconData: Icons.favorite ),
         _CustomIconButton( value: video.views, iconData: Icons.remove_red_eye_outlined ),

         const SizedBox(height: 10,),
         SpinPerfect(
          infinite: true,
          duration: const Duration( seconds: 2),
          child: const _CustomIconButton( value: 0, iconData: Icons.play_circle_outlined )
          ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(iconData, color: color, size: 30,)),

        if( value > 0)
        Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
