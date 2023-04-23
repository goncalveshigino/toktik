import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/videos_buttons.dart';
import 'package:toktik/presentation/widgets/video/full_creen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPostEntity> videoPostEntity;

  const VideoScrollableView({
    super.key,
    required this.videoPostEntity,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videoPostEntity.length,
      itemBuilder: (context, index) {
        final VideoPostEntity videoPost = videoPostEntity[index];

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
              child: VideosButtons(video: videoPost),
            )
          ],
        );
      },
    );
  }
}
