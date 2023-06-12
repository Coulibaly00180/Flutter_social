import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/theme/colors.dart';
import 'package:social/screens/welcome/sign_in_page.dart';
import 'package:social/screens/tabs/tabs_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/photo/photo-11.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'SHARE EVERYTHING WITH THE WORLD',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Try this app to connect with millions of people around the glob.',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 100),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    width: double.infinity,
                    height: 47,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      textStyle: const TextStyle(fontSize: 17),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: const Text('Log In'),
                  ),
                ),
                const SizedBox(height: 10),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    width: double.infinity,
                    height: 47,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      textStyle: const TextStyle(fontSize: 17),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TabsPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(FontAwesomeIcons.facebook),
                        SizedBox(width: 10),
                        Text('Connect with Facebook'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
