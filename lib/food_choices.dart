import 'package:bmibc/medical_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FoodChoices extends StatefulWidget {
  static const String id = 'foodchoices_screen';

  @override
  _FoodChoicesState createState() => _FoodChoicesState();
}

class _FoodChoicesState extends State<FoodChoices> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
