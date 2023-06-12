import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social/widgets/feed/story_widget.dart';
import 'package:social/widgets/feed/add_story_widget.dart';
import 'package:social/models/stories_model.dart';

class StoriesComponent extends StatelessWidget {
  const StoriesComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: stories.map((story) {
            if (story['currentUser']) {
              return AddStoryWidget(photoUrl: story['image']);
            } else {
              return StoryWidget(
                photoUrl: story['image'],
                color: story['color'],
                pseudo: story['pseudo'],
              );
            }
          }).toList(),
        ),
      ),
    );
  }
}
