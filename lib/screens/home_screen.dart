import 'package:flutter/material.dart';
import 'package:flutter_facebook_app/config/palette.dart';
import 'package:flutter_facebook_app/data/data.dart';
import 'package:flutter_facebook_app/models/post_model.dart';
import 'package:flutter_facebook_app/widgets/circle_button.dart';
import 'package:flutter_facebook_app/widgets/create_post_Container.dart';
import 'package:flutter_facebook_app/widgets/post_container.dart';
import 'package:flutter_facebook_app/widgets/rooms.dart';
import 'package:flutter_facebook_app/widgets/stories.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: false,
            floating: true,
            title: Text(
              'facebook',

              style: TextStyle(
                  color:Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2
              ),
            ),
            actions: [
             CircleButton(
                 icon: Icons.search,
                 iconSize: 30.0,
                 onPressed: ()=>print('Search'),
             ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: ()=>print('Message'),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser:currentUser),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Room(onlineUsers:onlineUsers),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser:currentUser,stories:stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context,index){
              final Post post=posts[index];
              return PostContainer(post:post);
            },
            childCount:posts.length
            ),
          )

        ],
      ),
    );
  }
}
