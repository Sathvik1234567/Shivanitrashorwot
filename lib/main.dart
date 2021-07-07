import 'package:bmibc/BMI/InputPage.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'about_screen.dart';
import 'food_choices.dart';
import 'medical_screen.dart';
import 'login_screen.dart';
import 'registeration_screen.dart';
import 'BMI/InputPage.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        FoodChoices.id: (context) => FoodChoices(),
        AboutScreen.id: (context) => AboutScreen(),
        MedicalScreen.id: (context) => MedicalScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        InputPage.id: (context) => InputPage()
      },
    );
  }
}
