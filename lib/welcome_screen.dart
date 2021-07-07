import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'components/Rounded_button.dart';
import 'registeration_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(
      () {
        setState(
          () {},
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'bmi stuff',
                    child: Container(
                      child: Image.asset('images/bmi stuff.png'),
                      height: 60.0,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                TypewriterAnimatedTextKit(
                  text: ['  BMI BC'],
                  speed: Duration(milliseconds: 150),
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(
              title: 'Log In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundButton(
              title: 'Sign Up',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
