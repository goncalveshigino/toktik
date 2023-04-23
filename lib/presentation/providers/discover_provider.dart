
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  
  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPostEntity> videosPostEntity = [];

  Future<void> loadNextPage() async {

  

    final List<VideoPostEntity> newVideos = videoPosts.map(
      (video) => LocalVideoPostModel.fromJson(video).toVideoPostEntity()
     ).toList();
       

    videosPostEntity.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
