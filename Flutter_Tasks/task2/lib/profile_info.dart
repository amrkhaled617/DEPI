import 'package:flutter/material.dart';
import 'package:task2/user.dart';

class ProfileInfo extends StatelessWidget {
  final User user;
  const ProfileInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(user.name , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              ),
        Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 17),
            child: Text(user.location , style: const TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),),
          )
      ],
    );

  }
}