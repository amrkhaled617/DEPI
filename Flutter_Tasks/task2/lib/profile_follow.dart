import 'package:flutter/material.dart';
import 'package:task2/user.dart';

class ProfileFollow extends StatelessWidget {
  final User user;
  const ProfileFollow({super.key, required this.user});

  @override
  Widget build (context) {
    return Container(     
            height: 45,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color:Color.fromARGB(180, 243, 243, 243),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox( 
                    child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${user.followers}', // The number of followers
                                  style: const TextStyle(color: Colors.black , fontWeight: FontWeight.w900 , fontSize: 16),
                                ),
                                const TextSpan(
                                  text: ' Followers', // The word "Followers"
                                  style: TextStyle(color: Color.fromARGB(255, 176, 176, 176) , fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )),
                SizedBox(
                    child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${user.following}', // The number of following
                                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w900 , fontSize: 16),
                                ),
                                const TextSpan(
                                  text: ' Following', // The word "Following"
                                  style: TextStyle(color: Color.fromARGB(255, 176, 176, 176) , fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )),
              ],
            ),
          );
  }
}