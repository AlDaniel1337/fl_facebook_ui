import 'package:facebook_ui/facebook_ui/publications/plubication_item.dart';
import 'package:flutter/material.dart';

import 'package:facebook_ui/config/plugins/faker/faker.plugin.dart';
import 'package:facebook_ui/data/entities/publication.entity.dart';

class Publications extends StatelessWidget {
   
  const Publications({super.key});
  
  @override
  Widget build(BuildContext context) {

    FakerPlugin fakerPlugin = FakerPlugin();
    List<Publication> publications = fakerPlugin.createFakePublications();

    return Container(
      height: 500,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: publications.length,
        itemBuilder: ( context, index ) => PublicationItem( publication: publications[index], ),
      ),
    );
  }
}