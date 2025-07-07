import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/config/plugins/svg_images/svg_images.dart';
import 'package:facebook_ui/data/entities/publication.entity.dart';
import 'package:facebook_ui/facebook_ui/publications/publication_image.dart';
import 'package:facebook_ui/facebook_ui/publications/publication_title.dart';
import 'package:facebook_ui/facebook_ui/publications/publication_created_data.dart';
import 'package:facebook_ui/services/Format_numbers.dart';
import 'package:flutter/material.dart';

class PublicationItem extends StatelessWidget {

  final Publication publication;
   
  const PublicationItem({
    super.key, 
    required this.publication
  });
  
  @override
  Widget build(BuildContext context) {

    final padding = const EdgeInsets.symmetric( horizontal: 20, vertical: 10 );
    final sepparator = const BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 6,
          color: Color( 0xffEBEBEB )
        )
      )
    );

    return Container(
      decoration: sepparator,
       width: double.infinity,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          PublicationCreatedData(padding: padding, publication: publication),
          PublicationImage(publication: publication),
          PublicationTitle(padding: padding, publication: publication),
          _Emojis( publication: publication ),

        ],
       ),
    );
  }
}

class _Emojis extends StatelessWidget {


  final Publication publication;

  const _Emojis({
    required this.publication
  });

  @override
  Widget build(BuildContext context) {

    const reactions = Reactions.values;

    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ).copyWith( bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          _EmojisList(reactions: reactions, publication: publication),

          Flexible(
            child: FittedBox(
              child: Row(
                children: [
                  Text("${ FormatNumbers.execute(publication.commentsCount.toDouble())} Comments"),
                  SizedBox( width: 15 ),
                  Text("${ FormatNumbers.execute(publication.sharesCount.toDouble())} Shares"),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

class _EmojisList extends StatelessWidget {
  const _EmojisList({
    required this.reactions,
    required this.publication,
  });

  final List<Reactions> reactions;
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
        reactions.length,
        (index){
    
          final reaction = reactions[index];
          final isActive = reaction == publication.currentUserReaction;
          final iconSize = isActive ? 30.0 : 20.0;
    
          return Padding(
            padding: const EdgeInsets.only( right: 7 ),
    
            child: SvgImage(
              url: reaction.call(),
              useColorfilter: false,
              width: iconSize, height: iconSize,
            ),
    
          );
        }
      ),
      ],
    );
  }
}
