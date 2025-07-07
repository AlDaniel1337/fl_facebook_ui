import 'package:facebook_ui/data/entities/publication.entity.dart';
import 'package:facebook_ui/widgets/aspect_ratio.dart';
import 'package:flutter/material.dart';

class PublicationImage extends StatelessWidget {
  const PublicationImage({
    super.key, 
    required this.publication,
  });

  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return MyAspectRatio(
      child: Image.network( 
        publication.imageUrl,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      )
    );
  }
}
