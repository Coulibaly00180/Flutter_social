import 'package:flutter/material.dart';
import 'package:social/widgets/appbar/app_bar_widget.dart';
import 'package:social/pages/feed/components/stories_component.dart';
import 'package:social/pages/feed/components/form_component.dart';
import 'package:social/pages/feed/components/posts_component.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Feed',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            StoriesComponent(),
            SizedBox(height: 10),
            FormComponent(),
            SizedBox(height: 10),
            PostsComponent()
          ],
        ),
      ),
    );
  }
}
