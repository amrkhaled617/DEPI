import 'package:flutter/material.dart';
import 'package:task2/user.dart';

class ProfilePicture extends StatelessWidget {
  final User user;
  const ProfilePicture({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 8),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(user.image),
            ),
          );
  }
}