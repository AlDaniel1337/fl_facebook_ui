import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/data/entities/publication.entity.dart';
import 'package:facebook_ui/data/entities/user.entity.dart';
import 'package:faker/faker.dart';

class FakerPlugin {

  List<Publication> createFakePublications({int howManyPublications = 50}){

    final publications = <Publication>[];

    final faker = Faker();
    final random = faker.randomGenerator;
    const reactions = Reactions.values;
    final reactionIndex = random.integer( reactions.length -1 );

    for (var i = 0; i < howManyPublications; i++) {
      
      final Publication publication = Publication(
        user: User(
          avatar:   faker.image.loremPicsum(), 
          username: faker.person.name(),
        ), 
        title:         faker.lorem.sentence(), 
        createdAt:     faker.date.dateTime(), 
        imageUrl:      faker.image.loremPicsum(),
        commentsCount: random.integer(50000), 
        sharesCount:   random.integer(50000),
        currentUserReaction: reactions[reactionIndex]
      );

      publications.add( publication );

    }

    return publications;
  }

}