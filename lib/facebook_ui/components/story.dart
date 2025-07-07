import 'package:flutter/material.dart';
import 'package:facebook_ui/data/entities/story.entity.dart';
import 'package:facebook_ui/widgets/avatar.dart';


class StoryHolder extends StatelessWidget {

  final bool isFirstElement;

  const StoryHolder({
    super.key,
    required this.story, 
    required this.isFirstElement,
  });

  final Story story;

  @override
  Widget build(BuildContext context) {

    final widthSize = 90.0;

    return Container(
      margin: EdgeInsets.only( 
        right: 15, 
        left: isFirstElement ? 20 : 0 
      ),
      width: widthSize,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [

                _StoryBackground( story: story ),
            
                Positioned(
                  bottom: 0, right: 0, left: 0,
                  child: Avatar(
                    asset: story.avatar,
                    size: 40,
                    shouldUseBorder: true,
                  ),
                ),
                
              ],
            ),
          ),

          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
      
        ],
      ),
    );
  }
}


class _StoryBackground extends StatelessWidget {

  const _StoryBackground({
    required this.story,
  });

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0, right: 0,
      top: 0, bottom: 20, 
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage( story.bg ),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular( 20 )
        ),
      ),
    );
  }
}