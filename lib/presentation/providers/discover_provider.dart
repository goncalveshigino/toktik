import 'package:flutter/material.dart';

import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_post_respository_impl.dart';



class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepositoryImpl videoPostRepositoryImpl;

  DiscoverProvider({
    required this.videoPostRepositoryImpl,
  });

  bool initialLoading = true;
  List<VideoPostEntity> videosPostEntity = [];

  Future<void> loadNextPage() async {

    final newVideos = await videoPostRepositoryImpl.getTrendingVideosByPage(1);

    videosPostEntity.addAll(newVideos);
    initialLoading = false;
    notifyListeners();

  }
  
}
