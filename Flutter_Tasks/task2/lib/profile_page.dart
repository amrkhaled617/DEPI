import 'package:flutter/material.dart';
import 'package:task2/profile_follow.dart';
import 'package:task2/profile_icons.dart';
import 'package:task2/profile_info.dart';
import 'package:task2/profile_picture.dart';
import 'package:task2/user.dart';

class MyWidget extends StatelessWidget {
  final User user;
  const MyWidget({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255,30,70,110),
        title: Center(child: Text('@${user.profileName}', style: const TextStyle(color: Colors.white, fontSize: 15) , )),
        leading: const Icon(Icons.arrow_back , color: Colors.white),
        actions: [Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.fromLTRB(15, 7, 15, 7), margin: const EdgeInsets.only(right: 10),
          child:  const Text('Follow', style: TextStyle(color: Color.fromARGB(255, 61, 37, 180))),)],
        ),
      body: Column(
        children: [
          ProfilePicture(user: user),
          ProfileInfo(user: user),
          ProfileFollow(user: user),
          ProfileIcons(user: user),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(255,241,240,252),
                ),
                width: 200,
                margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                height: 40,
                child: Center(child: Text('${user.shots} shots' , style: const TextStyle(color: Color.fromARGB(255,116,114,194), fontSize: 15, fontWeight: FontWeight.w600))),
                ),
              SizedBox(
                width: 190,
                height: 40,
                child: Center(child: Text('${user.collections} Collections' , style: const TextStyle(color: Color.fromARGB(255,188,188,188), fontSize: 15 , fontWeight: FontWeight.w600))),
              ),
            ],
            ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 370,
            child: const Image(
              image: AssetImage("assets/images/lower-half.jpeg"), fit: BoxFit.cover  ,),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255,116,114,194),
                  ),
                  child: const Center(child: Text('Donate', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500))),
                ),
                OutlinedButton(onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(60, 11, 60, 11),
                    side: const BorderSide(color: Color.fromARGB(255,116,114,194), width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Message' , style: TextStyle(color: Color.fromARGB(255,116,114,194), fontSize: 15, fontWeight: FontWeight.w500)
                )
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}