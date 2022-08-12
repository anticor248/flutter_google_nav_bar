import 'package:appbar_1/circle.dart';
import 'package:appbar_1/square.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List _posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
    'Post 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //insta Stories
        Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return CirclePage(
                  child: _posts[index],
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              }),
        ),
      ],
    ));
  }
}
