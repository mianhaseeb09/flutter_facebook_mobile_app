import 'package:flutter_facebook_app/models/models.dart';



class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
     this.user,
     this.caption,
     this.timeAgo,
     this.imageUrl,
     this.likes,
     this.comments,
     this.shares,
  });
}
