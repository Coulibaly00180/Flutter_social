import 'package:flutter/material.dart';
import 'package:social/theme/styles.dart';
import 'package:social/screens/welcome/welcome_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  void openWelcomePage(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const WelcomePage(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0),
      centerTitle: false,
      title: Text(
        title,
        style: appBarTitleStyle,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[800],
            ),
            onPressed: () {
              openWelcomePage(context);
            },
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.mail,
              color: Colors.grey[800],
            ),
            onPressed: () {
              openWelcomePage(context);
            },
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
