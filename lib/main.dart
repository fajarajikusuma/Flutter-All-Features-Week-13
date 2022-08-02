import 'package:flutter/material.dart';
import 'music_pages.dart';
import 'youtube_video.dart';
import 'imageGallery.dart';
import 'imageCamera.dart';
import 'videoGallery.dart';
import 'videoCamera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Multimedia",
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.queue_music),
                  text: "Music",
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                  text: "Youtube Video",
                ),
                Tab(
                  icon: Icon(Icons.image),
                  text: "Image\nGallery",
                ),
                Tab(
                  icon: Icon(Icons.camera),
                  text: "Image\nCamera",
                ),
                Tab(
                  icon: Icon(Icons.video_camera_back),
                  text: "Video\nGallery",
                ),
                Tab(
                  icon: Icon(Icons.video_camera_front),
                  text: "Video\nCamera",
                ),
              ],
              indicatorColor: Colors.amber,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: TabBarView(
              children: [
                Music(),
                YoutubeVideo(),
                ImageGallery(),
                ImageCamera(),
                VideoGallery(),
                VideoCamera()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
