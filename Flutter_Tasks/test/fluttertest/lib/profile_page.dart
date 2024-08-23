import 'package:flutter/material.dart';
import 'package:fluttertest/user.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final User user = User(id: 1, name: 'John Doe', score: 100, status: Status.pending);
    return user.createProfilePage(user);
  }
}