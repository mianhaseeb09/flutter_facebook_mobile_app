import 'package:flutter/material.dart';
import 'package:flutter_facebook_app/models/models.dart';
import 'package:flutter_facebook_app/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(children: [
           ProfileAvatar(imageUrl: currentUser.imageUrl,),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'What\'s on your mind?',
                ),
              ),
            )
          ]),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: ()=>print('Live'),
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('Live'),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: ()=>print('Photo'),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text('Photo'),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: ()=>print('Room'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: Text('Room'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
