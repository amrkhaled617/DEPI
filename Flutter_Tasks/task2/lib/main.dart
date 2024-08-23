import 'package:flutter/material.dart';
import 'package:task2/profile_page.dart';

import 'user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(user: User(
        profileName: 'amrkhaled617',
        name: 'Amr Khaled',
        image: "assets/images/profile-pic.jpg",
        location: 'Cairo, Egypt',
        shots: 200,
        collections: 10,
        following: 330,
        followers: 227,
      )),
    );
  }
}

