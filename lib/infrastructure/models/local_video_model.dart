import 'package:toktik/domain/entities/video_post.dart';



class LocalVideoPostModel {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;


   LocalVideoPostModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoPostModel.fromJson(Map<String, dynamic> json) => LocalVideoPostModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPostEntity toVideoPostEntity() => VideoPostEntity(
    caption: name,
    videoUrl: videoUrl, 
    likes: likes, 
    views: views
  );


}
