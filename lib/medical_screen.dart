import 'BMI/InputPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MedicalScreen extends StatefulWidget {
  static const String id = 'medical_screen';
  @override
  _MedicalScreenState createState() => _MedicalScreenState();
}

class _MedicalScreenState extends State<MedicalScreen> {
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

  String selectedPreference1 = 'Yes';
  String selectedPreference2 = 'Yes';
  String selectedPreference3 = 'Yes';
  String selectedPreference4 = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFa9d6e5),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Medical History',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'AbrilFatface',
                        color: Color(0xff012a4a),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Expanded(
                      child: Card(
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.fastfood),
                                title: Text('Are you Diabetic?'),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DropdownButton<String>(
                                        value: selectedPreference1,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'Yes'),
                                          DropdownMenuItem(
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'No'),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedPreference1 = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Expanded(
                      child: Card(
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.emoji_food_beverage),
                                title: Text('Do you have High BP'),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DropdownButton<String>(
                                        value: selectedPreference2,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'Yes'),
                                          DropdownMenuItem(
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'No'),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedPreference2 = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Expanded(
                      child: Card(
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.medical_services),
                                title: Text('Do you have any food allergies?'),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DropdownButton<String>(
                                        value: selectedPreference3,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'Yes'),
                                          DropdownMenuItem(
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'No'),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedPreference3 = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Expanded(
                      child: Card(
                        child: Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.medical_services),
                                title: Text('Do you smoke habitually?'),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    DropdownButton<String>(
                                        value: selectedPreference4,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'Yes'),
                                          DropdownMenuItem(
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'NanumMyeongjo',
                                                  color: Color(0xff012a4a),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              value: 'No'),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedPreference4 = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Center(
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, InputPage.id);
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              size: 25.0,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
