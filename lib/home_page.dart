import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'calls_page.dart';
import 'chats_page.dart';
import 'people_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    const ChatsPage(),
    const PeoplePage(),
    const CallsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('GNav AppBar'),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: pageList,
      ),
      bottomNavigationBar: Container(
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GNav(
            onTabChange: (valueIndex) {
              setState(() {
                pageIndex = valueIndex;
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            gap: 8,
            color: Colors.black87,
            activeColor: Colors.white,
            tabs: [
              GButton(
                icon: Icons.chat_bubble,
                text: 'Chats',
              ),
              GButton(
                icon: Icons.person,
                text: 'People',
              ),
              GButton(
                icon: Icons.phone,
                text: 'Calls',
              ),
              GButton(
                icon: Icons.camera,
                text: 'Chats',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
