import 'package:flutter/material.dart';
import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/data/entities/story.entity.dart';
import 'package:facebook_ui/facebook_ui/components/story.dart';

final _stories = [
  Story(
    bg: AssetsUrl.wallpaper1.url, 
    avatar: AssetsUrl.avatar1.url, 
    username: "Laura"
  ),
  Story(
    bg: AssetsUrl.wallpaper2.url, 
    avatar: AssetsUrl.avatar2.url, 
    username: "Pepe"
  ),
  Story(
    bg: AssetsUrl.wallpaper3.url, 
    avatar: AssetsUrl.avatar3.url, 
    username: "Lili"
  ),
  Story(
    bg: AssetsUrl.wallpaper4.url, 
    avatar: AssetsUrl.avatar4.url, 
    username: "Laura"
  ),
  Story(
    bg: AssetsUrl.wallpaper5.url, 
    avatar: AssetsUrl.avatar5.url, 
    username: "Mario"
  ),
  Story(
    bg: AssetsUrl.wallpaper6.url, 
    avatar: AssetsUrl.avatar6.url, 
    username: "Luis"
  ),
];


class Stories extends StatelessWidget {
   
  const Stories({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: _stories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final story = _stories[index];
          return StoryHolder(
            story: story, 
            isFirstElement: index == 0
          );
        }
      ),
    );
  }
}