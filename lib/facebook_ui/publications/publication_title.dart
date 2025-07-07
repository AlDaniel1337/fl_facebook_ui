import 'package:facebook_ui/data/entities/publication.entity.dart';
import 'package:flutter/material.dart';


class PublicationTitle extends StatelessWidget {
  const PublicationTitle({
    super.key, 
    required this.padding,
    required this.publication,
  });

  final EdgeInsets padding;
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.copyWith( top: 15 ),
      child: Text( 
        publication.title,
        style: const TextStyle(
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}