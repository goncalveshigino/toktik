

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {  


   final VideoPostDataSource videoPostDataSource;

   VideoPostRepositoryImpl({ required this.videoPostDataSource});


  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTrendingVideosByPage(int page) {
    return videoPostDataSource.getTrendingVideosByPage(page);
  }


}