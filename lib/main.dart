import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

import 'infrastructure/datasources/local_video_datasource_impl.dart';
import 'infrastructure/repositories/video_post_respository_impl.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  


   final videoPostRepositoryImpl = VideoPostRepositoryImpl(
        videoPostDataSource: LocalVideoDataSourceImpl()
    );


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider(videoPostRepositoryImpl: videoPostRepositoryImpl)..loadNextPage(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
          title: 'Toktik',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
