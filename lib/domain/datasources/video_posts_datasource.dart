

import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {

 Future<List<VideoPostEntity>> getFavoriteVideosByUser( String userId );

 Future<List<VideoPostEntity>> getTrendingVideosByPage( int page );

}