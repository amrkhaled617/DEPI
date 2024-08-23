
import 'package:flutter/material.dart';

enum Status{
  active,
  pending,
  blocked
}
class User{
  int id;
  String name;
  int score;
  Status status;
  User({required this.id,required this.name,required this.score,required this.status});
  Widget createProfilePage(User user){
    switch (user.status){
      case Status.active:
        return createProfilePageActiveUser(user);
      case Status.pending:
        return createProfilePagePendingUser(user);
      case Status.blocked:
        return createProfilePageBlockedUser(user);
        
    }
  }
  Widget createProfilePageActiveUser(User user){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(user.name),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.green,
          child: Center(
            child: Text('Score: ${user.score}'),
          ),
        ),
      ),
    );
  }
  Widget createProfilePagePendingUser(User user){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(user.name),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.orange,
          child: Center(
            child: Text('Score: ${user.score}'),
          ),
        ),
      ),
    );

  }
  Widget createProfilePageBlockedUser(User user){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(user.name),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.red,
          child: Center(
            child: Text('Score: ${user.score}'),
          ),
        ),
      ),
    );
  }
}