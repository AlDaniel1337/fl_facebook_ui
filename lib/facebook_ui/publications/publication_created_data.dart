import 'package:flutter/material.dart';
import 'package:facebook_ui/config/plugins/timeago/timeago.plugin.dart';
import 'package:facebook_ui/data/entities/publication.entity.dart';
import 'package:facebook_ui/widgets/avatar.dart';

class PublicationCreatedData extends StatelessWidget {
  const PublicationCreatedData({
    super.key, 
    required this.padding,
    required this.publication,
  });

  final EdgeInsets padding;
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Avatar( asset: publication.user.avatar, size: 38, ),
          const SizedBox( width: 10 ),
          Text( publication.user.username ),
          const Spacer(),
          Text( TimeAgo.getFormatedDate( publication.createdAt ) ),
        ],
      ),
    );
  }
}
