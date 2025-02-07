import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';
import '../../widgets/tutorial_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TutorialScreen extends StatefulWidget {
  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  void _completeTutorial() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('tutorial_seen', true);
    Navigator.pushReplacementNamed(context, '/login'); // Redirect to login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: [
              PageOne(),
              PageTwo(),
              PageThree(onFinish: _completeTutorial),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: TutorialIndicator(currentPage: _currentPage),
          ),
        ],
      ),
    );
  }
}
