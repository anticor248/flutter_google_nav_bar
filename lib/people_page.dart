import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _counter5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'People Page' + '\nCounter = $_counter5',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
        label: const Text('Add 5 Counter'),
        onPressed: () {
          setState(() {
            _counter5 += 5;
          });
        },
      ),
    );
  }
}
