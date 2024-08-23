import 'package:flutter/material.dart';

import 'package:task2/user.dart';
class ProfileIcons extends StatelessWidget {
  final User user;
  const ProfileIcons({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.values[5],
              children: const [
                Icon(Icons.explore),//this will be globe icon
                Icon(Icons.camera),//this will be a camera icon
                Icon(Icons.facebook),//ths will be a facebook icon
              ],
            ),
          );
  }
}