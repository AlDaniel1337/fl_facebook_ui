import 'package:facebook_ui/config/assets/assets.dart';
import 'package:facebook_ui/data/entities/user.entity.dart';

class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int sharesCount;
  final Reactions currentUserReaction;

  Publication({
    required this.title, 
    required this.createdAt, 
    required this.imageUrl, 
    required this.commentsCount, 
    required this.sharesCount,
    required this.user,
    required this.currentUserReaction,
  });
}