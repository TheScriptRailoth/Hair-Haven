import 'package:flutter/material.dart';
class SlideAnimationDemo extends StatefulWidget {
  @override
  _SlideAnimationDemoState createState() => _SlideAnimationDemoState();
}

class _SlideAnimationDemoState extends State<SlideAnimationDemo> {
  bool showHalfScreen = false;

  void toggleAnimation() {
    setState(() {
      showHalfScreen = !showHalfScreen;
    });
  }

  void closeSlide() {
    setState(() {
      showHalfScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide Animation'),
      ),
      body: Stack(
        children: [
          // Your main content goes here
          Center(
            child: ElevatedButton(
              onPressed: toggleAnimation,
              child: Text('Slide'),
            ),
          ),
          // Transparent background to close the window when tapped
          IgnorePointer(
            ignoring: !showHalfScreen,
            child: GestureDetector(
              onTap: closeSlide,
              child: Container(
                color: showHalfScreen ? Colors.black54 : Colors.transparent,
              ),
            ),
          ),
          // Animated widget that slides up from bottom
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: showHalfScreen ? 0 : -MediaQuery.of(context).size.height / 2,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Half Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}