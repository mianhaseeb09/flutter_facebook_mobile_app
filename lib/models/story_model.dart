import 'package:flutter_facebook_app/models/user_model.dart';



class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({
     this.user,
     this.imageUrl,
    this.isViewed = false,
  });
}
